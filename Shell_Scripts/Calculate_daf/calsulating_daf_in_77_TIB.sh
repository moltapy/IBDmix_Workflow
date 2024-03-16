#!/bin/bash
workmem="/public/group_data/he_yuan/allele_frequency"
cd $workmem
mkdir daf_in_77_TIB
cd daf_in_77_TIB
for chr in {1..22}; do
touch derived_allele_freq_in_77_TIB_${chr}.bed
echo -n "">derived_allele_freq_in_77_TIB_${chr}.bed
#注意到echo 这样会空一行,-n就不会
awk 'OFS="\t"{
    sum = 0
    if (toupper($4) == toupper($NF)) {
        for (i=6; i<44; i++) {
            sum += 2 - $i
        }
    } else if (toupper($3) == toupper($NF)) {
        for (i=6; i<N44; i++) {
            sum += $i
        }
    } else if ($NF=="N"||$NF=="-"){
        next
    }
    print $1,$2,$3,$4,$NF,sum,sum/38/2
}' /public/group_data/he_yuan/allele_frequency/add_ancestor_77/altai_${chr}.vcf >> derived_allele_freq_in_77_TIB_${chr}.bed
done