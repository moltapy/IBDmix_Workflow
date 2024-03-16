#!/bin/bash
mkdir af_in_77
cd af_in_77
for chr in {1..22}; do
touch allele_frequency_in_77_chr${chr}.txt
echo "" > allele_frequency_in_77_chr${chr}.txt
tail -n +2 /public/group_data/he_yuan/Old_data_in_IBDmix/hy_use_generate_mask_77/output_TIB77cmakeafterchangeSHP_noexclude_regions/genotype/uncompressed/altai_${chr}.vcf | awk 'OFS="\t"{sum=0; for(i=6; i<=NF; i++) sum+=$i; print $1,$2,$3,$4,sum,sum/77/2}' >> allele_frequency_in_77_chr${chr}.txt
done