import random
import unittest
from evaluations import *
from main import NAME_EVALUATION
from utils import *


class TestSanity(unittest.TestCase):
    def test_sanity(self):
        """
        Little sanity-check, that every method runs 100 times witout erros
        :return:
        """
        for _ in range(5):
            qc = generate_random_circuit(4, 10)
            for name, evaluation in NAME_EVALUATION.items():
                print(f"Evaluating: {name}...")
                if name == "tpar" or name == "voqc":
                    qc_ = evaluation(qc, root_dir="../")
                else:
                    qc_ = evaluation(qc)
                if name != "qfast":
                    self.assertTrue(verify_equality(qc_, qc),
                                    f"Algorithm: {name} did not prodcue a valid ciquit")
