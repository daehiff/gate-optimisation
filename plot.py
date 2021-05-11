import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from qiskit import QuantumCircuit

ALGORITHMS = ["tket", "qiskit", "tpar", "voqc", "qfast", "pyzx"]

COMPARISONS = ["non_clifford", "clifford_count", "depth", "overall_gate_count"]


def main():
    df = pd.read_csv("out.csv")
    plot_num_gates(df)
    # print(df)



def plot_num_gates(df):
    df_default = df.groupby(["algorithm", "circ_num_gates"], as_index=False).mean()
    df_default = df_default[df_default["algorithm"].str.match("default")]
    print(df_default)
    df_default = pd.concat([df_default] * 7, ignore_index=True)
    del df_default["algorithm"]

    df_ = df.groupby(["algorithm", "circ_num_gates"], as_index=False).mean()
    algorithm = df_["algorithm"]
    circ_num_gates = df_["circ_num_gates"]
    del df_["algorithm"]
    df_ = df_ - df_default
    df_["circ_num_gates"] = circ_num_gates
    df_["algorithm"] = algorithm

    for comparison_column in COMPARISONS:
        df_plot = df_[~df_["algorithm"].str.match("qfast")]
        sns.barplot(x="circ_num_gates", hue="algorithm", y=comparison_column, data=df_plot)
        plt.title(f"Comparison against: {comparison_column}")
        plt.show()


if __name__ == '__main__':
    main()

