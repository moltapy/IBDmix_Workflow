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

