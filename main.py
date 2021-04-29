import math
import os

import cirq
import numpy as np
import pyzx as zx
import qfast
from cirq import circuits, Circuit, decompose
from cirq.contrib.qasm_import import circuit_from_qasm
from qiskit import QuantumCircuit, Aer, execute, transpile
from qiskit.circuit import Gate
import subprocess

from SQIR.VOQC.interop import SQIR
from utils import to_qc_format


def main():
    qc = generate_random_circuit(4, 20)
    # qc = transpile(qc, basis_gates=["h", "cx", "p", "t"])
    get_circuit_stats(qc, verbose=True)

    print("Evaluating T-par")
    tpar_circ = tpar_evaluation(qc)
    get_circuit_stats(tpar_circ, verbose=True)

    print("Evaluating VOQC")
    # voqc_circ = voqc_evaluation(qc)
    # get_circuit_stats(voqc_circ, verbose=True)

    print("Evaluating QFast")
    qc_qfast = q_fast_evaluation(qc)
    get_circuit_stats(qc_qfast, verbose=True)

    print("Evaluating pyzx")
    qc_pyzx = pyzx_evaluation(qc)
    get_circuit_stats(qc_pyzx, verbose=True)


def tpar_evaluation(circ: QuantumCircuit) -> QuantumCircuit:
    """
    Evaluation of the t-par algorithm by Amy et. al.

    :param circ:
    :return:
    """
    out = to_qc_format(circ, replace_S=True)
    with open("temp.qc", "w") as f:
        f.write(out)

    result = subprocess.run("t-par/t-par < temp.qc", stdout=subprocess.PIPE, shell=True)
    result.check_returncode()
    os.remove("temp.qc")
    result = result.stdout.decode("utf-8")
    if "ERROR" in result:
        raise Exception(f"t-par couldn't parse the circuit: {result}")
    zx_circ = zx.Circuit.from_qc(result)
    return zx_circuit_to_qiskit_circuit(zx_circ)


def voqc_evaluation(circ: QuantumCircuit) -> QuantumCircuit:
    """
    Executes VOQC by its python wrapper
    :param circ:
    :return:
    """
    with open("SQIR/VOQC/temp.qasm", "w") as f:
        f.write(circ.qasm())
    out_circ = QuantumCircuit.from_qasm_str(SQIR(fname="temp.qasm").optimize().write_str())
    os.remove("SQIR/VOQC/temp.qasm")
    return out_circ


def q_fast_evaluation(circ: QuantumCircuit) -> QuantumCircuit:
    """
    Evaluation of the Q-Fast algorithm using Qskits Aer to create the unitary matrix
    :param circ:
    :return:, 0
    """
    job = execute(circ, Aer.get_backend('unitary_simulator'))
    circ_unitary = job.result().get_unitary(circ)
    circ = QuantumCircuit.from_qasm_str(qfast.synthesize(circ_unitary))
    return circ


def pyzx_evaluation(circ: QuantumCircuit) -> QuantumCircuit:
    """
    Evaluation using the pyzx libary.

    due to compability issues, it needs to be casted from QSkits Circuit to the internal datastrcuture
    => check if this consumes to much memory
    :param circ:
    :return:
    """
    c_graph = qiskit_circuit_to_zx_circuit(circ).to_graph()
    zx.simplify.full_reduce(c_graph)
    cir_reduced = zx.extract_circuit(c_graph)
    return zx_circuit_to_qiskit_circuit(cir_reduced)


def are_non_zeros_clifford(matrix: np.array):
    """
    Check weather the nonzero entries are all in [-1, 1, -i, i]
    Rounds the array towards last digit of its precision
    :param matrix:
    :return: boolen which is True if all non zeros are in [-1, 1, -i, i]
    """
    matrix_ = np.round(matrix, decimals=np.finfo(matrix.dtype).precision - 1)
    for non_zero in matrix_[matrix_.nonzero()]:
        if non_zero != 1.0 and non_zero != -1.0 and non_zero != 1.j and non_zero != -1.j:
            return False
    return True


def generate_pauli(j: int, n: int, p_type="x"):
    assert p_type == "x" or p_type == "z"
    pauli_x = np.asarray([[0.0, 1.0], [1.0, 0.0]])
    pauli_z = np.asarray([[1.0, 0.0], [0.0, -1.0]])
    if j == 0:
        pauli = pauli_x if p_type == "x" else pauli_z
    else:
        pauli = np.identity(2)

    for i in range(1, n):
        if i == j:
            pauli = np.kron(pauli, pauli_x if p_type == "x" else pauli_z)
        else:
            pauli = np.kron(pauli, np.identity(2))
    return pauli


def is_clifford(gate: Gate):
    gate_unitary = gate.to_matrix()
    for j in range(gate.num_qubits):
        pauli_x_j = generate_pauli(j, gate.num_qubits, p_type="x")
        pauli_z_j = generate_pauli(j, gate.num_qubits, p_type="z")
        if not are_non_zeros_clifford(gate_unitary @ pauli_x_j @ gate_unitary.conj().T) or \
                not are_non_zeros_clifford(gate_unitary @ pauli_z_j @ gate_unitary.conj().T):
            return False

    return True


def get_circuit_stats(circ: QuantumCircuit, verbose=False) -> [int, int, int, int, int]:
    """
    Given a (reduced) circuit evaluate the stats of this circ.
    Current stats are:
        1. depth
        2. overall gate count
        3. Clifford + T-Gate count + Others (pr. unknown gates)
    :param verbose: verbose the information instead of just returning it
    :param circ: circuit one wants to evaluate the statistics
    :return: list, consisting of: clifford_count, t_count, two_qubit_count, overall_gate_count, depth
    """
    depth = circ.depth()
    clifford_count = 0
    non_clifford = 0
    non_clifford_set = []
    one_qubit_count = 0
    two_qubit_count = 0
    n_qubit_count = 0
    overall_gate_count = len(circ.data)
    for instr, a, b in circ.data:
        if is_clifford(instr):
            clifford_count += 1
        else:
            non_clifford_set.append(instr.name)
            non_clifford += 1

        if instr.num_qubits == 1:
            one_qubit_count += 1
        if instr.num_qubits == 2:
            two_qubit_count += 1
        elif instr.num_qubits > 2:
            n_qubit_count += 1
    non_clifford_set = set(non_clifford_set)
    if verbose:
        print(f"""The cicuit stats are:
        Clifford-Gates:     {clifford_count}
        Non-Clifford:       {non_clifford}
        Non-Clifford-Set    {non_clifford_set}
        ---
        1-Qubit:            {one_qubit_count}
        2-Qubit:            {two_qubit_count}
        N-Qubit:            {n_qubit_count}
        ---
        Overall:            {overall_gate_count}
        ---
        Depth:              {depth}
        """)
    return clifford_count, non_clifford, two_qubit_count, overall_gate_count, depth


def zx_circuit_to_qiskit_circuit(circuit: zx.Circuit) -> QuantumCircuit:
    """
    Compability Qiskit <=> pyzx via qasm
    :param circuit:
    :return:
    """
    return QuantumCircuit.from_qasm_str(circuit.to_qasm())


def qiskit_circuit_to_zx_circuit(circ: QuantumCircuit) -> zx.Circuit:
    """
    Compability Qiskit <=> pyzx via qasm
    :param circ:
    :return:
    """
    return zx.Circuit.from_qasm(circ.qasm())


def generate_random_circuit(qubit_count, gate_count) -> QuantumCircuit:
    """
    Generates a RANDOM Clifford+T gateset, with the following gates in it:
        {"h", "cx", "x", "y", "z", "s", "t", "sdg", "tdg"}
    By removing x, y, z this would be a universal generator for every quantum circuit

    TODO more parameters? w.r.t gates ect.?
    :param qubit_count:
    :param gate_count:
    :return:
    """
    circuit = zx.Circuit.from_graph(zx.generate.cliffordT(qubit_count, gate_count)).to_basic_gates().split_phase_gates()
    circuit = zx_circuit_to_qiskit_circuit(circuit)
    for gate, _, _ in circuit.data:
        assert gate.name in {"h", "cx", "x", "y", "z", "s", "t", "sdg", "tdg"}
    return circuit


if __name__ == '__main__':
    main()
