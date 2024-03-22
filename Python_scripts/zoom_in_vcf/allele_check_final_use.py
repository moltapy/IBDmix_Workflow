import matplotlib.pyplot as plt
#画图部分先写成这样
# data = [
#     ("77,0", 621),
#     ("77,0,9", 577),
#     ("77,1", 0),
#     ("77,1,0", 0),
#     ("77,2", 19),
#     ("77,2,0", 2),
#     ("227,0", 620),
#     ("227,0,9", 567),
#     ("227,1", 0),
#     ("227,1,0", 0),
#     ("227,2", 19),
#     ("227,2,0", 2)
# ]
data = []
with open("data.txt", "r") as file:
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

colors = ['b', 'g', 'r', 'c', 'm', 'y']

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
plt.show()