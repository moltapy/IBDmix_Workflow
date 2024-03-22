import matplotlib.pyplot as plt

# 从文件中读取数据
data = []
with open("data.txt", "r") as file:
    flag = 1
    for line in file:
        signal = 0
        if flag % 2 == 1:
            condition = line.strip()
        else:
            count = int(line.strip())
            signal = 1
        flag += 1
        if signal == 1:
            data.append((condition, count))

# 分离条件和样本数量
labels = [item[0] for item in data]
samples = [item[1] for item in data]

# 绘制条形图
x = range(len(labels))

fig, ax = plt.subplots()
rects = ax.bar(x, samples, color='blue')

# 叠加显示相同条件下的两组数据
for i, label in enumerate(labels):
    if "and" in label:
        index = label.index("and")
        base_label = label[:index].strip()
        base_index = labels.index(base_label)
        rects[base_index].set_height(rects[base_index].get_height() + rects[i].get_height())
        rects[i].set_height(0)
    else:
        ax.text(x[i], rects[i].get_height(), f"{samples[i]}", ha='center', va='bottom')

# 添加标签和标题
ax.set_xlabel('Conditions')
ax.set_ylabel('Number of the Sites of Variants')
ax.set_title('Comparison of Samples')

# 显示图形
plt.tight_layout()
plt.show()