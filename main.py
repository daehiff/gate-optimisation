import numpy as np
import pyzx as zx
import pandas as pd
from qiskit import QuantumCircuit
from qiskit.circuit.random import random_circuit
from qiskit.quantum_info import Clifford
import matplotlib.pyplot as plt
import pytket as pk


def main():
    c = zx.Circuit.from_quipper_file("test").to_basic_gates()
    # fig = zx.draw_matplotlib(c)
    # fig.show()


def graph_to_circuit(graph: zx.Graph) -> QuantumCircuit:
    return QuantumCircuit.from_qasm_str(zx.circuit.Circuit.from_graph(graph).to_qasm())


def generate_random_circuit(qubit_count, gate_count):
    circuit = zx.generate.cliffordT(qubit_count, gate_count)
    return graph_to_circuit(circuit)


if __name__ == '__main__':
    main()
