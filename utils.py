import math
from copy import deepcopy

import numpy as np

# TODO this package needs a coverage of 100%
# TODO insert here step of circuit evaluation in pipeline
from pytket._tket.circuit import OpType
from qiskit import QuantumCircuit, execute, BasicAer
import pyzx as zx
import warnings

from qiskit.circuit import Gate

CLIFFORD_T_SET = {"h", "cx", "x", "y", "z", "s", "t", "sdg", "tdg"}


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
    """
    Generates a unitary of size 2**n corresponding to the application of one pauli at qubit j
    :param j:
    :param n:
    :param p_type:
    :return:
    """
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


def is_clifford_t(circ: QuantumCircuit) -> bool:
    """
    Check weather or not a circuit consists out of the Clifford+T group.
    :param circ:
    :return:
    """
    gate_set = set([gate.name for gate, _, _ in circ.data])
    for gate_name in gate_set:
        if gate_name not in CLIFFORD_T_SET:
            print("Counter example: " + gate_name)
            return False
    return True


def is_clifford(gate: Gate):
    """
    Checks wether a Gate is a Clifford Gate
    :param gate:
    :return:
    """
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
    clifford_t = is_clifford_t(circ)
    depth = circ.depth()
    clifford_count = 0
    non_clifford = 0
    one_qubit_count = 0
    two_qubit_count = 0
    n_qubit_count = 0
    gate_set = set([gate.name for gate, _, _ in circ.data])
    overall_gate_count = len(circ.data)
    for instr, a, b in circ.data:
        if is_clifford(instr):
            clifford_count += 1
        else:
            non_clifford += 1

        if instr.num_qubits == 1:
            one_qubit_count += 1
        if instr.num_qubits == 2:
            two_qubit_count += 1
        elif instr.num_qubits > 2:
            n_qubit_count += 1

    if verbose:
        print(f"""The cicuit stats are:
        Is Clifford+T:      {clifford_t}
        Clifford-Gates:     {clifford_count}
        Non-Clifford:       {non_clifford}
        ---
        1-Qubit:            {one_qubit_count}
        2-Qubit:            {two_qubit_count}
        N-Qubit:            {n_qubit_count}
        ---
        Overall:            {overall_gate_count}
        ---
        Depth:              {depth}
        ---
        Gateset:            {gate_set}
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


def generate_random_circuit(qubit_count, gate_count, p_t=None, p_s=None, p_hsh=None, p_cnot=None) -> QuantumCircuit:
    """
    Generates a RANDOM Clifford+T gateset, with the following gates in it:

    :param p_cnot:
    :param p_hsh:
    :param p_s:
    :param p_t:
    :param qubit_count:
    :param gate_count:
    :return:
    """
    circuit = zx.Circuit.from_graph(zx.generate.cliffordT(qubit_count, gate_count,
                                                          p_t=p_t,
                                                          p_s=p_s,
                                                          p_hsh=p_hsh,
                                                          p_cnot=p_cnot)).to_basic_gates().split_phase_gates()
    circuit = zx_circuit_to_qiskit_circuit(circuit)
    for gate, _, _ in circuit.data:
        assert gate.name in CLIFFORD_T_SET
    return circuit


def to_qc_format(circ: QuantumCircuit, replace_s=False) -> str:
    """
    Converts a Quantumcircuit to the .qc format as expected by t-par for instance, with gate-set:
    {H, CNOT, X, Y, Z, P, T}
    :param circ: The Quantum Circuit
    :param replace_s: Some authors use P for the Phase-gate, hence need to be replaced for adaption
    :return:
    """
    warnings.filterwarnings('ignore', category=DeprecationWarning)
    gate_set = set([gate.name for gate, _, _ in circ.data])
    for gate in gate_set:
        if gate not in {"h", "cx", "x", "y", "z", "s", "t", "sdg", "tdg"}:
            raise Exception(f"not in standart gateset: {gate}, expected one of: H, CNOT, X, Y, Z, P, T")

    qc = ""
    qc += ".v " + " ".join([f"{circ.qregs[0].name}{i}" for i, bit in enumerate(circ.qregs[0])]) + "\n"
    qc += ".i " + " ".join([f"{circ.qregs[0].name}{i}" for i, bit in enumerate(circ.qregs[0])]) + "\n"
    qc += "\n"
    qc += "BEGIN\n"
    for gate, qubits, _ in circ.data:
        qubit_position = " ".join([f"{qubit.register.name}{qubit.index}" for qubit in qubits])
        gate_name = gate.name.upper().replace('DG', '*').replace('CX', 'tof')
        if replace_s:
            gate_name = gate_name.replace("S", "P").replace("S*", "P*")
        qc += f"{gate_name} {qubit_position}\n"
    qc += "END\n"
    warnings.resetwarnings()
    return qc


def convert_clifford_t(qc: QuantumCircuit):
    """
    Given a circuit which is output by Qfast or pyzx to clifford+T set
    :param qc:
    :return:
    """
    out = QuantumCircuit(qc.num_qubits)

    for gate, reg, other in qc.data:
        if gate.name in CLIFFORD_T_SET:
            out.append(deepcopy(gate), deepcopy(reg), deepcopy(other))
        elif gate.name == "cz":
            assert len(reg) == 2
            control_qubit = reg[0]
            target_qubit = reg[1]
            out.h(target_qubit)
            out.cx(control_qubit, target_qubit)
            out.h(target_qubit)
        elif gate.name == "rz":
            pass
        else:
            raise Exception(f"Not a viable implementation to clifford+t: {gate.name}")
    return out
