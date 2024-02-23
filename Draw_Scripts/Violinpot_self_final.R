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
ggplot(data, aes(x = combined_pop, y = `length.Mb.`,fill=combined_pop)) +
  geom_violin(color="white",scale = "width")+
  geom_boxplot(position=position_dodge(0.9),width = 0.2, color = "#8b8989", size=0.7,outlier.shape = NA)+
  xlab("Populations")+
  ylab("Neanderthal Call per Ind (Mb)")+
  ggtitle("Violinplot of Callsets in samples of 77 merge 1KGP")+
  theme_minimal()+
  theme(
    axis.line = element_line(color = "black", size = 0.5),
    panel.grid = element_blank(),
    axis.text.x = element_text(size = 16, face = "bold", angle = 0, hjust = 0.5, color = "black"),
    axis.text.y = element_text(size = 16, color = "black",margin = margin(l = 20)),
    axis.title = element_text(size = 18, face = "bold", hjust = 0.5),
    plot.title = element_text(size = 20,face = "bold",hjust=0.5,vjust = 0.5),
    plot.margin = my_margin)+
  scale_color_d3(alpha = 0.65) + scale_fill_d3(alpha = 0.65)+
  scale_y_continuous(breaks = seq(15,90, by = 10))
ggsave("violin_plot.pdf", width = 16, height = 9, units = "in")

