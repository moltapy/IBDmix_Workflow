library(ggplot2)

# 创建示例数据
csv1_read <- read.csv("C:\\Users\\22634\\Desktop\\CSV_samples\\77_unique_density.csv")
csv2_read <- read.csv("C:\\Users\\22634\\Desktop\\CSV_samples\\227_unique_density.csv")

data1 <- data.frame(lengths = csv1_read[,6], region = rep("77samples_unique", nrow(csv1_read)))
data2 <- data.frame(lengths = csv2_read[,6], region = rep("227samples_unique", nrow(csv2_read)))

# 将region转换为有序因子，指定顺序
data1$region <- factor(data1$region, levels = c("77samples_unique", "227samples_unique"))
data2$region <- factor(data2$region, levels = c("77samples_unique", "227samples_unique"))
max(data1$lengths)
max(data2$lengths)
# 绘制密度图
ggplot() +
  geom_density(data = data1, aes(x = lengths), fill = "skyblue", color = "black") +
  geom_density(data = data2, aes(x = lengths), fill = "skyblue", color = "black") +
  labs(title = "Length Distribution", x = "Length(Kb)", y = "Density") +
  facet_grid(~region) +
  xlim(0, 250) +  # 设置X轴范围为0到250
  theme(plot.title = element_text(hjust = 0.5),  # 将标题居中
        panel.background = element_rect(fill = "white"),  # 设置背景为白色
        panel.grid.minor.x = element_blank(),  # 隐藏次要X轴网格线
        axis.ticks.x = element_line(color = "black", size = 0.5,),  # 设置X轴刻度线样式
        axis.text.x = element_text(size = 8, hjust = 0.5, vjust = 0.5))  # 设置X轴刻度标签样式

