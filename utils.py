import numpy as np

# TODO this package needs a coverage of 100%
# TODO insert here step of circuit evaluation in pipeline
from qiskit import QuantumCircuit
import pyzx as zx
import warnings


def to_qc_format(circ: QuantumCircuit, replace_S=False) -> str:
    """
    Converts a Quantumcircuit to the .qc format as expected by t-par for instance, with gate-set:
    {H, CNOT, X, Y, Z, P, T}
    :param circ: The Quantum Circuit
    :param replace_S: Some authors use P for the Phase-gate, hence need to be replaced for adaption
    :return:
    """
    warnings.filterwarnings('ignore', category=DeprecationWarning)
    name_set = get_set_of_names(circ)
    for gate in name_set:
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
        if replace_S:
            gate_name = gate_name.replace("S", "P").replace("S*", "P*")
        qc += f"{gate_name} {qubit_position}\n"
    qc += "END\n"

    return qc


def get_set_of_names(circ: QuantumCircuit):
    name_set = []
    for gate, _, _ in circ.data:
        if gate.name not in name_set:
            name_set.append(gate.name)
    return name_set


def main():
    qc = QuantumCircuit(2)
    qc.h(0)
    qc.cx(0, 1)
    # qc.x(0)
    # qc.y(0)
    # qc.z(0)
    qc.s(0)  # P-gate weird convention
    qc.sdg(0)
    qc.t(0)
    qc.tdg(0)
    print(qc)
    print(to_qc_format(qc))
    print(zx.Circuit.from_qasm(qc.qasm()).to_qc())


if __name__ == '__main__':
    main()
