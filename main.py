import sysimport timefrom evaluations import *from utils import generate_random_circuit, get_circuit_statsimport osimport pandas as pdimport logging as loglog.basicConfig(filename='data/out.log',                format='%(asctime)s [%(levelname)-5.5s]: %(message)s',                datefmt="%m/%d/%Y %I:%M:%S %p",                level=log.WARNING)NAME_EVALUATION = {    "default": lambda x: x,    "tket": tket_evaluation,    "qiskit": qiskit_evaluation,    "tpar": tpar_evaluation,    "voqc": voqc_evaluation,    "qfast": q_fast_evaluation,    "pyzx": pyzx_evaluation,}NUM_GATE_COUNTS = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]NUM_QUBITS = [3, 4, 5]T_PROBABILITY = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]CNOT_PROBABILITY = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]STORAGE_ROOT = "circuits"def setup_logger():    root = log.getLogger()    root.setLevel(log.WARNING)    handler = log.StreamHandler(sys.stdout)    handler.setLevel(log.WARNING)    formatter = log.Formatter('%(asctime)s [%(levelname)-5.5s]: %(message)s')    handler.setFormatter(formatter)    root.addHandler(handler)def main():    evaluate_rebased(samples=20)########################## Evaluatations with rebased qubits########################def evaluate_rebased(samples=20):    setup_logger()    log.warning("Evaluating Gate count")    rb_evaluate_gate_count(num_samples=samples)    log.warning("Evaluating Num Qubits")    rb_evaluate_num_qubits(num_samples=samples)    log.warning("Evaluating t_pr")    rb_evaluate_t_pr(num_samples=samples)    log.warning("Evaluating cnot_pr")    rb_evaluate_cnot_pr(num_samples=samples)    log.warning("Done!")def rb_evaluate_gate_count(num_qubits=4, num_samples=10):    """    Evaluating num_samples random circuits by increasing num_gates    :param num_samples:    :param num_qubits:    :return:    """    df = pd.DataFrame()    for gate_count in NUM_GATE_COUNTS:        log.warning(f"At {gate_count}")        for i in range(num_samples):            df = random_evaluation(df, f"i_{i}_cnt_{gate_count}", num_qubits, gate_count,                                   subfolder="rebase/gate_count", rebase_ibm=True)    df.to_csv("data/rebase/gate_count.csv")def rb_evaluate_num_qubits(gate_count=50, num_samples=10):    """    Evaluating num_samples random circuits by increasing num_gates    :param gate_count:    :param num_samples:    :return:    """    df = pd.DataFrame()    for num_qubits in NUM_QUBITS:        log.warning(f"At {num_qubits}")        for i in range(num_samples):            df = random_evaluation(df, f"i_{i}_num_qubits_{num_qubits}", num_qubits, gate_count,                                   subfolder="rebase/qubits", rebase_ibm=True)    print("Done, saving CSV")    df.to_csv("data/rebase/num_qubits.csv")def rb_evaluate_t_pr(gate_count=50, num_qubits=4, num_samples=10):    """    Evaluating num_samples random circuits by increasing num_gates    :param num_qubits:    :param gate_count:    :param num_samples:    :return:    """    df = pd.DataFrame()    for t_p in T_PROBABILITY:        log.warning(f"At {t_p}")        for i in range(num_samples):            df = random_evaluation(df, f"i_{i}_t_pr_{t_p}", num_qubits, gate_count, p_t=t_p,                                   subfolder="rebase/tprob", rebase_ibm=True)    df.to_csv("data/rebase/t_pr.csv")def rb_evaluate_cnot_pr(gate_count=50, num_qubits=4, num_samples=10):    """    Evaluating num_samples random circuits by increasing num_gates    :param num_qubits:    :param gate_count:    :param num_samples:    :return:    """    df = pd.DataFrame()    for p_cnot in CNOT_PROBABILITY:        log.warning(f"At {p_cnot}")        for i in range(num_samples):            df = random_evaluation(df, f"i_{i}_cnot_pr_{p_cnot}", num_qubits, gate_count, p_cnot=p_cnot,                                   subfolder="rebase/cnot_pr", rebase_ibm=True)    df.to_csv("data/rebase/cnot_pr.csv")############################## Standard evaluations#############################def standard_evaluations():    """    This first experiment, where I didn't change the gate basis of each algorithm    :return:    """    setup_logger()    samples = 50    log.warning("Evaluating Gate count")    evaluate_gate_count(num_samples=samples)    log.warning("Evaluating Num Qubits")    evaluate_num_qubits(num_samples=samples)    log.warning("Evaluating t_pr")    evaluate_t_pr(num_samples=samples)    log.warning("Evaluating cnot_pr")    evaluate_cnot_pr(num_samples=samples)    log.warning("Done!")def evaluate_gate_count(num_qubits=4, num_samples=10):    """    Evaluating num_samples random circuits by increasing num_gates    :param num_samples:    :param num_qubits:    :return:    """    df = pd.DataFrame()    for gate_count in NUM_GATE_COUNTS:        log.warning(f"At {gate_count}")        for i in range(num_samples):            df = random_evaluation(df, f"i_{i}_cnt_{gate_count}", num_qubits, gate_count,                                   subfolder="default/gate_count")    df.to_csv("data/default/gate_count.csv")def evaluate_num_qubits(gate_count=50, num_samples=10):    """    Evaluating num_samples random circuits by increasing num_gates    :param gate_count:    :param num_samples:    :return:    """    df = pd.DataFrame()    for num_qubits in NUM_QUBITS:        log.warning(f"At {num_qubits}")        for i in range(num_samples):            df = random_evaluation(df, f"i_{i}_num_qubits_{num_qubits}", num_qubits, gate_count,                                   subfolder="default/qubits")    print("Done, saving CSV")    df.to_csv("data/default/num_qubits.csv")def evaluate_t_pr(gate_count=50, num_qubits=4, num_samples=10):    """    Evaluating num_samples random circuits by increasing num_gates    :param num_qubits:    :param gate_count:    :param num_samples:    :return:    """    df = pd.DataFrame()    for t_p in T_PROBABILITY:        log.warning(f"At {t_p}")        for i in range(num_samples):            df = random_evaluation(df, f"i_{i}_t_pr_{t_p}", num_qubits, gate_count, p_t=t_p,                                   subfolder="default/tprob")    df.to_csv("data/default/t_pr.csv")def evaluate_cnot_pr(gate_count=50, num_qubits=4, num_samples=10):    """    Evaluating num_samples random circuits by increasing num_gates    :param num_qubits:    :param gate_count:    :param num_samples:    :return:    """    df = pd.DataFrame()    for p_cnot in CNOT_PROBABILITY:        log.warning(f"At {p_cnot}")        for i in range(num_samples):            df = random_evaluation(df, f"i_{i}_cnot_pr_{p_cnot}", num_qubits, gate_count, p_cnot=p_cnot,                                   subfolder="default/cnot_pr")    df.to_csv("data/default/cnot_pr.csv")##################### Helper###################def store_circuit(qc: QuantumCircuit, algorithm: str, hash: str, category: str):    """    Store a circuit by    :param qc:    :param algorithm:    :param hash:    :param category:    :return:    """    circ_path = f"{STORAGE_ROOT}/{category}"    circ_name = f"{hash}_{algorithm}"    os.makedirs(circ_path, exist_ok=True)    qc.qasm(filename=f"{circ_path}/{circ_name}.qasm")def random_evaluation(df: pd.DataFrame, circ_hash: str, qubit_count: int, num_gates: int,                      p_t: float = None,                      p_cnot: float = None,                      subfolder: str = "random",                      rebase_ibm: bool = False):    qc = generate_random_circuit(qubit_count, num_gates, p_t=p_t, p_cnot=p_cnot)    for name, evaluation in NAME_EVALUATION.items():        start = time.time()        qc_ = evaluation(qc)        time_diff = start - time.time()        if rebase_ibm:            qc_ = rebase_gates_ibm(qc_)        store_circuit(qc_, name, circ_hash, subfolder)        clifford_count, non_clifford, two_qubit_count, overall_gate_count, depth = get_circuit_stats(qc_)        df = df.append({"circuit": f"{subfolder}/{circ_hash}",                        "circ_q_count": qubit_count,                        "circ_num_gates": num_gates,                        "algorithm": name,                        "clifford_count": clifford_count,                        "non_clifford": non_clifford,                        "two_qubit_count": two_qubit_count,                        "overall_gate_count": overall_gate_count,                        "time_diff[s]": time_diff,                        "depth": depth}, ignore_index=True)    return dfif __name__ == '__main__':    main()