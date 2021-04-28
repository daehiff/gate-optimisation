import numpy as np


# TODO this package needs a coverage of 100%
# TODO insert here step of circuit evaluation in pipeline


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
