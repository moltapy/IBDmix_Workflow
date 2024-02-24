library(ggplot2)
library(ggsci)
latin_data <- read.csv("C:/Users/22634/Desktop/result_77merge1kg.csv", 
                       sep="\t", header = TRUE)
#latin_data$pop <- factor(latin_data$pop, 
#                            levels = c("LALL","LALS","LALT",
#                                       "MYBU","MYCH","MYNA",
#                                       "MYRA","VICH","VIKI",
#                                       "CHDA","CHBL","CHWA",
#                                       "CMTO","CMKH","CMJA",
#                                       "CMBR","CMLA","CMPH",
#                                       "CMME","THW2"), 
#                            ordered = TRUE)
#levels = c('CMLA','CMME','CMPH','CMTO','LALL','LALS','LALT','MYBU','MYCH','MYNA','MYRA','THW2','VICH','VIKI','CHBL','CHDA','CHWA','CMBR','CMJA','CMKH','SAS','EUR','EAS'),
latin_data$suppop <- factor(latin_data$suppop, 
                            levels = c('EAS','SAS','EUR','AMR','AFR'), 
                           ordered = TRUE)

my_margin <- margin(1.5, 1, 1, 1, "cm")
ggplot(latin_data, aes(x = suppop, y = `length.Mb.`, fill = suppop)) +

  geom_violin(color = "white", scale = "width")+ 
  geom_boxplot(position=position_dodge(0.9),width = 0.2, color = "#8b8989", size=0.7,outlier.shape = NA)+
  xlab("") 
  #ylab("Difference of Neanderthal Sequence per Ind (Mb)") +
  #ggtitle("") +
  #theme_bw() +用于指定黑白主题色素
  #theme(
  #  panel.grid = element_blank(),#用于隐藏绘图区的网格线
  #  axis.text.x = element_text(size = 20, face = "bold", angle = 45, hjust = 1, color = "black"),#设置x轴的显示样式
  #  axis.text.y = element_text(size = 20, color = "black",margin = margin(l = 20)),
  #  axis.title = element_text(size = 18, face = "bold", hjust = 0.7),
  #  plot.margin = my_margin) +#设置边距
  #scale_color_lancet(alpha = 0.65) + scale_fill_lancet(alpha = 0.65) +
  #scale_y_continuous(breaks = seq(-2,500 , by = 1)) +#设置y轴展示起始点和间距
  #guides(fill = "none")+
  ##scale_y_continuous(breaks = seq(40, 80, by = 5))
  #expand_limits( y = c(-2, 5))

