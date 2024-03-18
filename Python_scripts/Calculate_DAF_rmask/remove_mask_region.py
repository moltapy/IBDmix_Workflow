import os
import subprocess

workmem = "/public/group_data/he_yuan/allele_frequency/daf_in_77_remove_mask"
os.chdir(workmem)

for i in range(1, 23):
    subprocess.run(["touch", f"derived_allele_freq_in_77_{i}_rmask.bed"])

for chr in range(1, 23):
    print("Start chr{chr}")
    origin_daf = f"/public/group_data/he_yuan/allele_frequency/daf_in_77/derived_allele_freq_in_77_{chr}.bed"
    output_daf = f"/public/group_data/he_yuan/allele_frequency/daf_in_77_remove_mask/derived_allele_freq_in_77_{chr}_rmask.bed"
    compare_bed = f"/public/group_data/he_yuan/IBDmix_related/2024_03_04testbeds/altai/chr{chr}.bed"

    with open(origin_daf, "r") as input_file, open(output_daf, "a") as output_file:
        for line in input_file:
            line_data = line.split()
            value = float(line_data[1])
            compare_data = [(float(compare_line.split()[1]), float(compare_line.split()[2])) for compare_line in open(compare_bed)]

            if all(value < a or value >= b for a, b in compare_data):
                output_file.write(line)
    print("End chr{chr}")
