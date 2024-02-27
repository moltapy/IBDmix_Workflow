#!/bin/bash
count=0
for i in {1..22}
do
     count=$((count + $(zcat /public/group_data/he_yuan/TIB_reference_phased_vcf_227/chrom_$i.vcf.gz | wc -l)))
done
echo $count
#在for后面加冒号会导致chrom_1:的错误