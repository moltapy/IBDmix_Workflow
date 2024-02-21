import subprocess

for i in range(1, 23):
    cmd = f"awk 'NR==FNR{{a[$2];next}} !($2 in a)' /public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77/output_TIB77cmakeafterchangeSHP_noexclude_regions/genotype/uncompressed/altai_{i}.vcf /public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77/output_TIB77cmakebeforechangeSHP_noexclude_regions/genotype/uncompressed/altai_{i}.vcf > altai_subtract{i}.vcf"
    subprocess.run(cmd, shell=True)