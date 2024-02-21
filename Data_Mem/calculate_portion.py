import subprocess
for i in range(1,23):
    count1=0
    count2=0
    path1=f"/public/group_data/he_yuan/Old_data_in_IBDmix/2_0_test/hy_use_generate_mask_77/altai_subtract{i}.vcf"
    path2=f"/public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77/output_TIB77cmakebeforechangeSHP_noexclude_regions/genotype/uncompressed/altai_{i}.vcf"
    output="./../portion0in77/portion0in77.txt"
    with open(path1,"r+") as file:
        line=file.readlines()
        count1=len(line)
        print(count1)
    with open(path2,"r+") as file_main:
        line_main=file_main.readlines()
        count2=len(line_main)
        print(count2)
    with open(output,"a") as file_out:
        file_out.write(f"chr{i}\t{count1/count2}\n")


