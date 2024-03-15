#!/bin/bash
touch /public/group_data/he_yuan/Venn_Zoom_in/Coverage_calculate/final_conclusion_test/unique_in_77/6_36429903_36488476_in_227samples/archaic_equals_2_count.vcf
echo -n '' > /public/group_data/he_yuan/Venn_Zoom_in/Coverage_calculate/final_conclusion_test/unique_in_77/6_36429903_36488476_in_227samples/archaic_equals_2_count.vcf
echo -e "chr\tsite\tref\talt\tAltaiNean\tfreq_0\tfreq_1\tfreq_2\tfreq_9" >> /public/group_data/he_yuan/Venn_Zoom_in/Coverage_calculate/final_conclusion_test/unique_in_77/6_36429903_36488476_in_227samples/archaic_equals_2_count.vcf
awk '{
    count_0 = 0
    count_1 = 0
    count_2 = 0
    count_9 = 0

    for (i = 6; i <= NF; i++) {
        if ($i == 0) {
            count_0++
        } else if ($i == 1) {
            count_1++
        } else if ($i == 2) {
            count_2++
        } else if ($i == 9) {
            count_9++
        }
    }

    print $1 "\t" $2 "\t" $3 "\t" $4 "\t" $5 "\t"  count_0/227 "\t"  count_1/227 "\t"  count_2/227 "\t"  count_9/227
}' /public/group_data/he_yuan/Venn_Zoom_in/Coverage_calculate/final_conclusion_test/unique_in_77/6_36429903_36488476_in_227samples/archaic_equals_2.vcf >> /public/group_data/he_yuan/Venn_Zoom_in/Coverage_calculate/final_conclusion_test/unique_in_77/6_36429903_36488476_in_227samples/archaic_equals_2_count.vcf