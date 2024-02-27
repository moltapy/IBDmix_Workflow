#!/bin/bash

cd $1

# 定义文本文件路径
input_file="4_50000.txt"
temp_file="temp.csv"
output_file="result_227merge1kg_filtered.csv"


# 处理文本文件
(awk 'BEGIN {FS="\t"; OFS="\t"} NR>1 {data[$8]["length"] += $5; data[$8]["pop"] = $6; data[$8]["suppop"] = $7} \
      END {for (id in data) {printf "%s\t%.3f\t%s\t%s\n", id, data[id]["length"]/1000000, data[id]["pop"], data[id]["suppop"]}}' \
      "$input_file" | { echo -e "ID\tlength(Mb)\tpop\tsuppop"; sort -t$'\t' -k4 -k2n; }) > "$temp_file"


# 将ACB和ASW换成ACB/ASW
awk -F'\t' 'BEGIN {OFS="\t"} {if ($3 == "ACB" || $3 == "ASW") {$4 = "ACB/ASW"}  print $0}' "$temp_file" > "$output_file"

rm "$temp_file"
 