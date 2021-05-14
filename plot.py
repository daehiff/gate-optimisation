import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from qiskit import QuantumCircuit

ALGORITHMS = ["tket", "qiskit", "tpar", "voqc", "qfast", "pyzx"]

COMPARISONS = ["non_clifford", "clifford_count", "depth", "overall_gate_count"]


def main():
    plot_default()


def plot_default():
    df = pd.read_csv("data/default/gate_count.csv")
    plot_by_metric(df, metric="circ_num_gates")


def plot_by_metric(df, metric="circ_num_gates"):
    df_default = df.groupby(["algorithm", metric], as_index=False).mean()
    df_default = df_default[df_default["algorithm"].str.match("default")]
    print(df_default)
    df_default = pd.concat([df_default] * 7, ignore_index=True)
    del df_default["algorithm"]

    df_ = df.groupby(["algorithm", metric], as_index=False).mean()
    algorithm = df_["algorithm"]
    circ_num_gates = df_[metric]
    del df_["algorithm"]
    df_ = df_ - df_default
    df_[metric] = circ_num_gates
    df_["algorithm"] = algorithm

    for comparison_column in COMPARISONS:
        df_plot = df_
        sns.barplot(x=metric, hue="algorithm", y=comparison_column, data=df_plot)
        plt.title(f"Comparison against: {comparison_column}")
        plt.show()


if __name__ == '__main__':
    main()
