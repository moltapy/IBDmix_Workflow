library(VennDiagram)
portion1<-929.299

portion2<-635.203

intersectd<-597.883
#上面把两个Venn图的总大小和交集总大小分别存进

venn.plot<-draw.pairwise.venn(
  #注意得使用这个函数才有scaled选项
  cross.area = intersectd,
  area1 = portion1,
  area2 = portion2,
  fill=c("lightblue","purple"),
  category = c("227samples merge 1KGP whole genome coverage of TIB","77samples merge 1KGP whole genome coverage of TIB"),
  lwd=rep(1,1),
  ext.text = FALSE,
  cex=rep(1.5,3),
  cat.pos = c(0,0),
  cat.cex=rep(1.5,2),
  cat.just = list(c(0.5, 0.5), c(0.5,5))
)
pdf("venn_diagram.pdf", width = 8, height = 6, pointsize = 12, onefile = FALSE, paper = "special", bg = "white", family = "Helvetica")
grid.draw(venn.plot)
dev.off()


