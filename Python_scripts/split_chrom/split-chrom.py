import subprocess as sub

origin_file="/public/group_data/he_yuan/Venn_Zoom_in/Coverage_calculate/shared_in_77and227/shared_in_77samples/final.bed"
final_dir="/public/group_data/he_yuan/Venn_Zoom_in/Coverage_calculate/shared_in_77and227/shared_in_77samples/split_chrom/"
for chr in range(1,23):
    sub.run(["touch",f"/public/group_data/he_yuan/Venn_Zoom_in/Coverage_calculate/shared_in_77and227/shared_in_77samples/split_chrom/chr{chr}.bed"])
with open(origin_file,"r") as input:
    for line in input:
        line=line.strip().split()
        with open(f"{final_dir}/{line[0]}.bed","a") as output:
            output.write("\t".join(line)+"\n")
        output.close()