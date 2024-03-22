import matplotlib.pyplot as plt

# 从文件中读取数据
data = []
with open("data.txt", "r") as file:
    flag=1
    for line in file:
        signal=0
        if flag%2==1:
            condition=line.strip()
        else:
            count=line.strip()
            signal=1
        flag+=1
        if signal==1:
            data.append((condition, int(count)))

# 分离条件和样本数量
labels = [item[0] for item in data]
samples = [item[1] for item in data]

# 绘制条形图
x = range(len(labels))

fig, ax = plt.subplots()
rects = ax.bar(x, samples)
for i in range(0,len(labels)):
    ax.text(x[i], rects[i].get_height(), f"{samples[i]}", ha='center', va='bottom')

# 添加标签和标题
ax.set_xlabel('Conditions')
ax.set_ylabel('Number of Samples')
ax.set_title('Comparison of Samples')
ax.set_xticks(x)
ax.set_xticklabels(labels)

# 显示图形
plt.tight_layout()
plt.show()