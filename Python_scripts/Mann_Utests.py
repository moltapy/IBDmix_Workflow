#学习里面列表推导式的写法，以及split()[]，还有不能使用sub.run(["cd",dir])，只能用os
import numpy as np
import subprocess as sub
from scipy import stats
import os

target_file = "/public/group_data/he_yuan/allele_frequency/T_TESTS/77TIBvsCHB"
os.chdir(target_file)
sub.run(["touch", "u_test_output.txt"])

with open(f"{target_file}/u_test_output.txt", "a") as output:
    for chr in range(1, 23):
        output.write(f"chr{chr}_output:\n")
        CHB_FILE = f"/public/group_data/he_yuan/allele_frequency/daf_in_CHB/derived_allele_freq_in_CHB_{chr}.bed"
        TIB_FILE = f"/public/group_data/he_yuan/allele_frequency/daf_in_77_TIB/derived_allele_freq_in_77_TIB_{chr}.bed"
        TIB_DAF = [float(line.split()[6]) for line in open(TIB_FILE).readlines()]
        CHB_DAF = [float(line.split()[6]) for line in open(CHB_FILE).readlines() if line.split()[2] in [line_tib.split()[2] for line_tib in open(TIB_FILE).readlines()]]

        
        if __name__ == '__main__':
            output.write("检验双样本U值的结果\n")
            u_statistic, p_value = stats.mannwhitneyu(CHB_DAF, TIB_DAF, alternative='two-sided')
            output.write(f"U-value={u_statistic}, p-value={p_value:.10f}\n")