import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from qiskit import QuantumCircuit

ALGORITHMS = ["tket", "qiskit", "tpar", "voqc", "qfast", "pyzx"]

COMPARISONS = ["non_clifford", "clifford_count", "depth", "overall_gate_count"]


def main():
    plot_default()


def plot_default(include_qfast=False):
    df = pd.read_csv("data/default/gate_count.csv")
    plot_by_metric(df, metric="circ_num_gates", include_qfast=include_qfast)

    df = pd.read_csv("data/default/num_qubits.csv")
    plot_by_metric(df, metric="circ_q_count", include_qfast=include_qfast)

    df = pd.read_csv("data/default/cnot_pr.csv")
    plot_by_metric(df, metric="p_cnot", include_qfast=include_qfast)

    df = pd.read_csv("data/default/t_pr.csv")
    plot_by_metric(df, metric="p_t", include_qfast=include_qfast)


def plot_default(include_qfast=False):
    df = pd.read_csv("data/rebase/gate_count.csv")
    plot_by_metric(df, metric="circ_num_gates", include_qfast=include_qfast)

    df = pd.read_csv("data/rebase/num_qubits.csv")
    plot_by_metric(df, metric="circ_q_count", include_qfast=include_qfast)

    df = pd.read_csv("data/rebase/cnot_pr.csv")
    plot_by_metric(df, metric="p_cnot", include_qfast=include_qfast)

    df = pd.read_csv("data/rebase/t_pr.csv")
    plot_by_metric(df, metric="p_t", include_qfast=include_qfast)


def plot_by_metric(df, metric="circ_num_gates", include_qfast=True):
    df_default = df[df["algorithm"].str.match("default")]
    df_default = pd.DataFrame(np.repeat(df_default.values, 7, axis=0), columns=df_default.columns)
    del df_default["Unnamed: 0"]
    del df["Unnamed: 0"]
    alg = df["algorithm"]
    metric_ = df[metric]
    del df_default["algorithm"]
    del df_default["circuit"]
    del df["algorithm"]
    del df["circuit"]
    df_ = df - df_default
    df_ = df_.astype(np.float64)
    df_["algorithm"] = alg
    df_[metric] = metric_
    df_ = df_[~df_["algorithm"].str.match("default")]
    if not include_qfast:
        df_ = df_[~df_["algorithm"].str.match("qfast")]
    for comparison_column in COMPARISONS:
        sns.barplot(x=metric, hue="algorithm", y=comparison_column, data=df_, errwidth=1, capsize=0.1)
        plt.title(f"Metric: {comparison_column}")
        plt.show()


if __name__ == '__main__':
    main()
