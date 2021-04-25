import math

import numpy as np
import pyzx as zx
import pandas as pd
import qfast
from qiskit import QuantumCircuit, Aer, execute, transpile
from qiskit.circuit import Gate
from qiskit.circuit.library import RXGate, RYGate
from qiskit.circuit.random import random_circuit
from qiskit.converters import circuit_to_dag
from qiskit.quantum_info import Clifford
import matplotlib.pyplot as plt
import pytket as pk
from SQIR.VOQC.interop.voqc import SQIR


def net_entry(gate: Gate, position):
    if len(position) > 2:
        raise Exception(f"Only: 'CNOT, X, Y, Z, ...' gates are allowed, but found: {gate.name}")
    return gate.name, position


def generate_netlist(circ: QuantumCircuit):
    return [net_entry(gate, position) for gate, position, _ in circ.data]


class NamCircuit:
    """
    Wrapper for the three representations of the circuit by nam et. al
    0. (internal) original reference upon the circuit
    1. netlist:             List of gates
    2. dag:                 DAG-Representation of the cirquit
    3. phase polynomial:
    """

    def __init__(self, circ: QuantumCircuit):
        self.circ = circ
        self.netlist = circ.data
        self.dag = circuit_to_dag(circ)  # TODO check implementation + representation
        # TODO check if and when this representation is necessary

    def netlist(self, netlist):
        pass


def pre_processing(circ: NamCircuit):
    pass


def main():
    qc = QuantumCircuit(2)

    qc.h(0)
    qc.h(1)

    for gate, _, _ in qc.data:
        print(gate.name, gate.params)


if __name__ == '__main__':
    main()
