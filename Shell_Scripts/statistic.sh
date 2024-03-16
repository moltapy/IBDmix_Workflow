#初版
#!/bin/bash
script_dir=$(dirname "$0")
folder_list=()
result_file="$script_dir/Statistic_of_Sites.txt"
if [ ! -f "$result_file" ]; then
    echo "Right,touch it"
    touch $result_file
else
    echo "File exists,del(y/n)?"
     read -r answer
    if [ "$answer" = "y" ]; then
        # 用户选择删除文件
        rm "$result_file"
        echo "File deleted."
        touch $result_file
    else
        # 用户选择不删除文件
        echo "File not deleted."
    fi
fi
while IFS= read -r -d '' folder; do
    folder_list+=("$folder")
done < <(find "$script_dir" -mindepth 1 -maxdepth 1 -type d -print0)
for folder in "${folder_list[@]}"; do
    dir=$(echo "$folder" | grep -oE '_[^_]*$' | cut -c 2-)
    for((i=0;i<=2;i++));do
        file=$folder/archaic_equals_$i.vcf
        echo "$dir archaic==$i" >> $result_file
        wc -l $file | awk '{print $1}' >>  $result_file
    done
done