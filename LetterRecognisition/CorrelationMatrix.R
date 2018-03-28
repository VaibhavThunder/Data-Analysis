library(RCurl)

getDataSet <- getURL('https://archive.ics.uci.edu/ml/machine-learning-databases/letter-recognition/letter-recognition.data', ssl.verifyhost=FALSE, ssl.verifypeer=FALSE)
AlphabetDataSet <- read.csv(textConnection(getDataSet),header=F)
head(AlphabetDataSet)
library(reshape2)
library(ggplot2)
d <- melt(AlphabetDataSet[,-c(3:3)])
ggplot(d,aes(x = value)) + 
  facet_wrap(~variable,scales = "free_x") + 
  geom_histogram()
corr_mat=cor(AlphabetDataSet[,2:17],method="s")
library(corrplot)
corrplot(corr_mat)
library(cowplot)
p1 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V1)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V1")

p2 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V2)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="V2")

p3 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V3)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="V3")

p4 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V4)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="V4")

plot_grid(p1, p2, p3, p4, ncol = 4, nrow = 1)

p5 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V5)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V5")

p6 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V6)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="V6")

p7 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V7)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="V7")

p8 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V8)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="V8")

plot_grid(p5, p6, p7, p8, ncol = 4, nrow = 1)

p9 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V9)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="X9")

p10 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V10)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="X10")

p11 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V11)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="X11")

p12 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V12)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="X12")

plot_grid(p9, p10, p11, p12, ncol = 4, nrow = 1)

p13 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V13)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank())+ labs(x="V13")

p14 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V14)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="V14")

p15 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V15)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="V15")

p16 <- ggplot(AlphabetDataSet,aes(x="",y=AlphabetDataSet$V16)) + geom_boxplot(fill = "#56B4E9", color = "black")+ theme(axis.title.y=element_blank()) + labs(x="V16")

plot_grid(p13, p14, p15, p16, ncol = 4, nrow = 1)


z1 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V1)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="V1",y="count")

z2 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V2)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="V2",y="count")

z3 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V3)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="V3",y="count")

z4 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V4)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange")+ labs(x="V4",y="count")

plot_grid(z1, z2, z3, z4, ncol = 2, nrow = 2)

z5 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V5)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X5",y="Count")

z6 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V6)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X6",y="Count")

z7 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V7)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X7",y="Count")

z8 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V8)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X8",y="Count")

plot_grid(z5, z6, z7, z8, ncol = 2, nrow = 2)

z9 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V9)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X9",y="Count")

z10 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V10)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X10",y="Count")

z11 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V11)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X11",y="Count")

z12 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V12)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X12",y="Count")

plot_grid(z9, z10, z11, z12, ncol = 2, nrow = 2)

z13 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V13)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X13",y="Count")

z14 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V14)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X14",y="Count")

z15 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V15)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X15",y="Count")

z16 <- ggplot(data=AlphabetDataSet,aes(AlphabetDataSet$V16)) + geom_histogram(breaks=seq(0,15,by=1),color="black",fill="orange") + labs(x="X16",y="Count")

plot_grid(z13, z14, z15, z16, ncol = 2, nrow = 2)

library(ggplot2)
ggplot(AlphabetDataSet, aes(x=AlphabetDataSet$V4, y=AlphabetDataSet$v14, color=V17)) + geom_point(shape=1)
