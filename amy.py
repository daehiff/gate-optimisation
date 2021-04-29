import itertools
import time
from copy import deepcopy

from qiskit import QuantumCircuit, Aer, execute, transpile, BasicAer
from qiskit.circuit import Gate
from qiskit.converters import circuit_to_dag
from qiskit.quantum_info import Statevector

import numpy as np
import pyzx as zx

# TODO assert, that the gates are all represented by this set of instructions
# TODO write access functions for that (maybe in general in order to keep gate reduction consistent)

# official instruction set => changed the p from Amy et. al. to s according to qiskit
from main import qiskit_circuit_to_zx_circuit, zx_circuit_to_qiskit_circuit, generate_random_circuit

INTRUCTION_SET = ["h", "cx", "rx", "ry", "rz", "s", "sdg", "t", "tdg"]

# internal instruction set => seperation between control and x
INTRUCTION_SET_ = ["h", "c", "x", "rx", "ry", "rz", "s", "sdg", "t", "tdg"]

UNITARY_BACKEND = BasicAer.get_backend('unitary_simulator')


def main():
    qc = QuantumCircuit(2)
    qc.cy(0, 1)
    print(qc)
    qc_ = mitm_algorithm(qc, 10)
    if qc_ is not None:
        print(qc_)
        print(is_circuit_equal(qc, qc_))
    else:
        print("No circuit found")


def circuit_from_string_representation(num_qubits, gate_string: list):
    """
    Converts the list of gate strings towards a Quantumcircuit object.

    :param num_qubits:
    :param gate_string:
    :return:
    """
    qc = QuantumCircuit(num_qubits)
    lookup_table = {gate: (gate_string.index(gate) if gate in gate_string else None) for gate in INTRUCTION_SET_}
    if lookup_table["h"] is not None:
        qc.h(lookup_table["h"])

    if lookup_table["rx"] is not None:
        qc.x(lookup_table["rx"])

    if lookup_table["ry"] is not None:
        qc.y(lookup_table["ry"])

    if lookup_table["rz"] is not None:
        qc.z(lookup_table["rz"])

    if lookup_table["s"] is not None:
        qc.s(lookup_table["s"])

    if lookup_table["sdg"] is not None:
        qc.sdg(lookup_table["sdg"])

    if lookup_table["t"] is not None:
        qc.t(lookup_table["t"])

    if lookup_table["tdg"] is not None:
        qc.tdg(lookup_table["tdg"])

    if lookup_table["x"] is not None:
        assert lookup_table["c"] is not None
        qc.cx(lookup_table["c"], lookup_table["x"])

    return qc


def generate_all_combinations(gate_set, num_qubits):
    """
    Generates V_(n, G) from the Amy et. al Paper.
    The set of unitaries with depth 1 given the num_qubits plus the gate_set
    :param gate_set:
    :param num_qubits:
    :return:
    """
    archetype = ["i" for _ in range(num_qubits)]
    queue = []
    if "cx" in gate_set:
        assert num_qubits != 1
        gate_set_ = {gate for gate in gate_set if gate != "cx"}
        for i in range(num_qubits):
            for j in range(num_qubits):
                if i != j:
                    tmp = deepcopy(archetype)
                    tmp[i] = "x"
                    tmp[j] = "c"
                    queue.append((tmp, ["cx"]))
    else:
        gate_set_ = gate_set
    queue.append((archetype, []))
    out = []
    while len(queue) != 0:
        tmp, gates = queue.pop(0)
        if tmp not in out:
            out.append(tmp)
        for gate in [g_ for g_ in gate_set_ if g_ not in gates]:
            for i in range(num_qubits):
                if tmp[i] == "i":
                    next_ = deepcopy(tmp)
                    next_gates_ = deepcopy(gates)
                    next_[i] = gate
                    next_gates_.append(gate)
                    queue.append((next_, next_gates_))
    return [circuit_from_string_representation(num_qubits, gate) for gate in out]


def mitm_algorithm(unitary: QuantumCircuit, max_depth: int, gate_set=None):
    """

    :param unitary: the quantum circuit to optimize
    :param max_depth: the depth the quantum circuit is supposed to be reduced to
    :param gate_set: Set of gates to reduce the QC to
    :return: A (hopefully reduced circuit
    """

    qc = QuantumCircuit(2)
    qc.sdg(1)
    qc.cx(0, 1)
    qc.s(1)
    if gate_set is None:
        gate_set = INTRUCTION_SET
    num_qubits = unitary.num_qubits
    s_i_prev = [QuantumCircuit(num_qubits)]
    all_combinations = generate_all_combinations(gate_set, num_qubits)
    for i in range(int(max_depth / 2.0)):
        print(f"i: {i}")
        s_i = generate_next_set(all_combinations, s_i_prev)
        print("Set created")
        potential_vw_prev = find_intersection_with_previous(s_i_prev, s_i, unitary)
        potential_vw = find_intersection_with_current(s_i, unitary)
        if potential_vw_prev is not None:
            V, W = potential_vw_prev
            return W.compose(V)
        if potential_vw is not None:
            V, W = potential_vw
            return W.compose(V)
        s_i_prev = s_i
    return None


def find_intersection_with_previous(s_i_prev, s_i, unitary):
    for qc in s_i:
        for previous_qc in s_i_prev:
            combined = unitary.compose(previous_qc.inverse())
            if is_circuit_equal(qc, combined):
                return previous_qc, qc
    return None


def find_intersection_with_current(s_i, unitary: QuantumCircuit):
    for qc in s_i:
        for qc_2 in s_i:
            combined = unitary.compose(qc_2.inverse())
            if is_circuit_equal(qc, combined):
                return qc_2, qc


def is_circuit_equal(qc_1: QuantumCircuit, qc_2: QuantumCircuit):
    unitary_1 = qiskit_circuit_to_zx_circuit(qc_1)
    unitary_2 = qiskit_circuit_to_zx_circuit(qc_2)
    unitary_1.add_circuit(unitary_2.adjoint())
    unitary_1 = unitary_1.to_graph()
    zx.simplify.full_reduce(unitary_1)
    cir_reduced = zx.extract_circuit(unitary_1)
    return len(cir_reduced.gates) == 0


def is_circuit_equal_slow(qc_1: QuantumCircuit, qc_2: QuantumCircuit):
    unitary_1 = circuit_to_unitary(qc_1)
    unitary_2 = circuit_to_unitary(qc_2)
    return np.allclose(unitary_1, unitary_2)


def generate_next_set(all_combinations, previous_set):
    return [s_i.compose(v_i.copy()) for v_i in all_combinations for s_i in previous_set]


def generate_random_vectors(m: int = 4):
    real = np.random.uniform(low=-1000.0, high=1000.0, size=(m, m))
    imag = np.random.uniform(low=-1000.0, high=1000.0, size=(m, m))
    return real + 1j * imag


def generate_hash(unitary: np.array, v: np.array, m: int = 4) -> np.array:
    """
    Generate the hash for the trees key.
    :param unitary:
    :param v:
    :param m:
    :return:
    """
    assert unitary.shape == v.shape
    hash_matrix = np.zeros((m, m), dtype=np.complex128)
    for i in range(m):
        for j in range(m):
            hash_matrix[i, j] = v[i] @ unitary @ v[j]
    return hash_matrix


def circuit_to_unitary(qc: QuantumCircuit) -> np.array:
    """
    Converts any given QuantumCircuit into a unitary matrix
    Currently hacky way using AER backend.
    :param qc:
    :return:
    """
    job = execute(qc, UNITARY_BACKEND)
    res = job.result().get_unitary(qc, decimals=15)
    return res


if __name__ == '__main__':
    main()
