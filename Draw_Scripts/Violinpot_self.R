library(ggplot2)
library(ggsci)
data<- read.csv("C:\\Users\\22634\\Desktop\\result_77merge1kg.csv",sep="\t",header=TRUE)

#data$pop<-factor(data$pop,levels=c('EAS','SAS','EUR','AMR','AFR'),ordered=TRUE)

my_margin<- margin(1.5,1,1,1,"cm")

#ggplot(data,aes(x=pop,y=`length.Mb.`,fill=supop))+
  #geom_violin(color = "white", scale = "width") 

# 合并pop和suppop为新的变量
data$combined_pop <- factor(ifelse(data$pop == "TIB" | data$pop == "HAN", data$pop, data$suppop))

# 设置新的变量的水平顺序
data$combined_pop <- factor(data$combined_pop, levels=c('EAS','AFR','SAS','EUR','AMR','TIB','HAN','ACB/ASW'))

# 绘制violin plot
ggplot(data, aes(x = combined_pop, y = `length.Mb.`)) +
  geom_violin()

#由上面的代码就已经可以画出violinplot了，后续的代码是给其加上boxplot以及让其更美观用的。
#fill是给其填充颜色和图例的
#xlab是添加x轴的label
#ggtitle("")添加标题
#
#你可以使用`ggtitle()`函数中的`hjust`和`vjust`参数来调整`ggplot2`绘图中标题的水平和垂直位置。
#
#例如，你可以这样调整标题的位置：
#
#```R
## 假设你已经创建了一个ggplot对象p
#p + ggtitle("Your Title", hjust = 0.5, vjust = 0.5)
#```
#
#在这个例子中，`hjust`和`vjust`参数的取值范围是0到1，分别表示水平和垂直方向上的位置。0.5表示居中，小于0.5表示靠左或靠下，大于0.5表示靠右或靠上。你可以根据需要调整这两个参数的取值来改变标题的位置。

#抱歉，我之前的回答有误。实际上，`ggtitle()`函数并不接受`hjust`和`vjust`参数来调整标题的位置。
#
#要调整标题的位置，你可以使用`theme()`函数中的`plot.title`元素来设置标题的位置。例如：
#
#```R
#p + ggtitle("Your Title") +
#  theme(plot.title = element_text(hjust = 0.5, vjust = 0.5))
#```
#
#在这个例子中，`element_text()`函数中的`hjust`和`vjust`参数用于调整标题的水平和垂直位置。

#在ggplot2中，`scale_color_lancet()`和`scale_fill_lancet()`函数用于设置颜色和填充的调色板，并且可以通过`alpha`参数来设置颜色和填充的透明度。例如：
#
#```R
#p + scale_color_lancet(alpha = 0.8) + scale_fill_lancet(alpha = 0.8)
#```
#
#这将应用名为lancet的调色板，并设置颜色和填充的透明度为0.8。#