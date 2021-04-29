import math

from qiskit import QuantumCircuit, Aer, execute, transpile
from qiskit.circuit import Gate
from qiskit.converters import circuit_to_dag

from amy import circuit_to_unitary, is_circuit_equal
import numpy as np
import pyzx as zx


def net_entry(gate: Gate, position):
    if len(position) > 2:
        raise Exception(f"Only: CLIFFORD+T gates are allowed, but found: {gate.name}")
    return gate.name, position


def generate_netlist(circ: QuantumCircuit):
    return [net_entry(gate, position) for gate, position, _ in circ.data]


def get_set_of_names(circ: QuantumCircuit):
    name_set = []
    for gate, _, _ in circ.data:
        if gate.name not in name_set:
            name_set.append(gate.name)
    return name_set


def pre_processing(circ: QuantumCircuit):
    set_of_names = get_set_of_names(circ)
    print(set_of_names)


def main():
    pass


def verify_h_identities():
    """
    Identities involving the H gate.

    Note: i1 and i2 is not equivalent to out knowledge => why?!
    :return:
    """
    print("identity #1")
    qc = QuantumCircuit(1)
    qc.h(0)
    qc.rz(math.pi / 2.0, 0)
    qc.h(0)
    print(qc)
    print("----")
    qc_ = QuantumCircuit(1)
    qc_.rz(-math.pi / 2.0, 0)
    qc_.h(0)
    qc_.rz(-math.pi / 2.0, 0)
    print(qc_)

    print("are equal: ", is_circuit_equal(qc, qc_))
    print()
    print("Identity #2")
    qc = QuantumCircuit(1)
    qc.h(0)
    qc.rz(-math.pi / 2.0, 0)
    qc.h(0)
    print(qc)
    print("----")
    qc_ = QuantumCircuit(1)
    qc_.rz(math.pi / 2.0, 0)
    qc_.h(0)
    qc_.rz(math.pi / 2.0, 0)
    print(qc_)

    print("are equal: ", is_circuit_equal(qc, qc_))

    print()
    print("Identity #3")
    qc = QuantumCircuit(2)
    qc.h(1)
    qc.h(0)
    qc.cx(0, 1)
    qc.h(0)
    qc.h(1)
    print(qc)
    print("----")
    qc_ = QuantumCircuit(2)
    qc_.cx(1, 0)
    print(qc_)

    print("are equal: ", is_circuit_equal(qc, qc_))
    print()
    print("Identity #4")
    qc = QuantumCircuit(2)
    qc.h(1)
    qc.rz(-math.pi / 2.0, 1)
    qc.cx(0, 1)
    qc.rz(math.pi / 2.0, 1)
    qc.h(1)
    print(qc)
    print("----")
    qc_ = QuantumCircuit(2)
    qc_.rz(math.pi / 2.0, 1)
    qc_.cx(0, 1)
    qc_.rz(-math.pi / 2.0, 1)
    print(qc_)

    print("are equal: ", is_circuit_equal(qc, qc_))
    print()
    print("Identity #5@")
    qc = QuantumCircuit(2)
    qc.h(1)
    qc.rz(math.pi / 2.0, 1)
    qc.cx(0, 1)
    qc.rz(-math.pi / 2.0, 1)
    qc.h(1)
    print(qc)
    print("----")
    qc_ = QuantumCircuit(2)
    qc_.rz(-math.pi / 2.0, 1)
    qc_.cx(0, 1)
    qc_.rz(math.pi / 2.0, 1)
    print(qc_)

    print("are equal: ", is_circuit_equal(qc, qc_))


if __name__ == '__main__':
    main()
