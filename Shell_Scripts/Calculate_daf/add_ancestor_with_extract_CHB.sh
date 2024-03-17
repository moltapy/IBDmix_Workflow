#!/bin/bash
#其实这是将古人加到最后一列
workmem="/public/group_data/he_yuan/allele_frequency"
cd $workmem
mkdir add_ancestor_CHB
cd add_ancestor_CHB
mkdir CHB_vcf
for chr in {1..22}; do
    tail -n +2 /public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77merge1kg_changeSHP/output_TIB77merge1kgcmakeafter_noexclude_regions_callboth/genotype/altai_${chr}.vcf | awk '{printf "%s\t%s\t%s\t%s\t%s\t", $1, $2, $3, $4, $5; for(i=1780; i<=(1780+103); i++) {printf "%s\t", $i}; printf "\n"}' > CHB_vcf/altai_${chr}.vcf 
    awk 'NR==FNR{a[$3]=$4;next} ($2 in a){print $0,a[$2]}' /public/group_data/he_yuan/ancestor_allele/${chr}ancestor.bed CHB_vcf/altai_${chr}.vcf > altai_${chr}.vcf
done
#rm -r CHB_vcf