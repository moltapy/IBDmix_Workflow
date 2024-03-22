import os
import matplotlib.pyplot as plt

data_transfer = []
input_file=input("Please input the absolute path of the statistic file\n")
#先把片段信息剥离出来，然后进入对应的文件夹，其实不用进文件夹好像，因为我这边是绝对路径，但是要进文件夹把整个片段搞出来、
folder=input_file[:-22]
os.chdir(folder)
contents=os.listdir(folder)
subfolder=None
for content in contents:
    if os.path.isdir(os.path.join(folder,content)):
        subfolder=content
        break
parts=subfolder.split("_")
chrmosome=parts[0]
start=parts[1]
end=parts[2]
formatted_name=f"chr{chrmosome}:{start}-{end}"
output_file_final=f"{input_file[:-4]}_trans.txt"
output_figure=f"{output_file_final[:-4]}.png"
with open(input_file, "r") as file:
    for line in file:
        if line.strip().isdigit():
            count = int(line)
            data_transfer.append((condition, count))
        else:
            temp=""
            condition=""
            for index,i in enumerate(line):
                if i.isdigit():
                    print(index)
                    temp+=i
                    #注意这里最后一位是\n
                    if ((index!=len(line)-2) and (not line[index+1].isdigit())):
                        condition+=f"{temp},"
                        temp=""
                    elif(index==len(line)-2):
                        condition+=temp
                        temp=""

            

# 写入转换后的数据到新文件
with open(output_file_final, "w") as output_file:
    for condition, count in data_transfer:
        output_file.write(f"{condition}\n{count}\n")

print("Data conversion completed.")

data = []
with open(output_file_final, "r") as file:
    flag=1
    for line in file:
        signal=0
        if flag%2==1:
            condition=line.strip('(')
            print(condition)
            condition=condition.strip(')')
        else:
            count=line.strip()
            signal=1
        flag+=1
        if signal==1:
            data.append((condition, int(count)))
# 解析数据
data_dict = {}
for item in data:
    key = item[0].split(',')[0]
    if key not in data_dict:
        data_dict[key] = []
    data_dict[key].append(item)

# 创建左右两个子图
fig, axs = plt.subplots(1, 2, figsize=(12, 6))
fig.suptitle(formatted_name, fontsize=16, fontweight='bold')
colors = ['b', 'g', 'b', 'g', 'b', 'g']

for i, key in enumerate(['77', '227']):
    ax = axs[i]
    sub_data = data_dict.get(key, [])
    print(sub_data)
    x = range(0,len(sub_data),2)

    for j, (condition, count) in enumerate(sub_data):
        if j%2==0:
            ax.bar(j, count, color=colors[j % len(colors)])
            ax.text(j, count, f"{count}", ha='center', va='bottom')
        else:
            ax.bar(j-1, count, color=colors[j % len(colors)])
            ax.text(j-1, count, f"all modern variant={condition[-2]}\n\n{count}", ha='center', va='bottom',color='red')
    ax.set_xlabel('Conditions')
    ax.set_ylabel('Number of Variants')
    ax.set_title(f'Variants Distribution in {key} Samples')
    ax.set_xticks(x)
    ax.set_xticklabels([item[0] for item in sub_data][::2])

plt.tight_layout()
plt.savefig(output_figure)
plt.show()