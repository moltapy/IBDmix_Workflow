import subprocess
for i in range(1,23):
    cmd=f"zcat /public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77merge1kg_changeSHP/output_TIB77merge1kgcmakeafter_noexclude_regions_callboth/genotype/altai_{i}.gz > /public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77merge1kg_changeSHP/output_TIB77merge1kgcmakeafter_noexclude_regions_callboth/genotype/altai_{i}.vcf"
    subprocess.run(cmd,shell=True)