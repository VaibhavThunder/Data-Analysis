library(cowplot)
library(ggplot2)
robotReading = read.csv("phpVeNa5j.csv")
head(robotReading)
#https://archive.ics.uci.edu/ml/datasets/Wall-Following+Robot+Navigation+Data
#boxplot
p1 <- ggplot(robotReading,aes(x="",y=robotReading$V1)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V1")
p2 <- ggplot(robotReading,aes(x="",y=robotReading$V2)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V2")
p3 <- ggplot(robotReading,aes(x="",y=robotReading$V3)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V3")
p4 <- ggplot(robotReading,aes(x="",y=robotReading$V4)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V4")
p5 <- ggplot(robotReading,aes(x="",y=robotReading$V5)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V5")
p6 <- ggplot(robotReading,aes(x="",y=robotReading$V6)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V6")
p7 <- ggplot(robotReading,aes(x="",y=robotReading$V7)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V7")
p8 <- ggplot(robotReading,aes(x="",y=robotReading$V8)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V8")
plot_grid(p1, p2, p3, p4,p5,p6,p7,p8, ncol = 8, nrow = 1)

p9 <- ggplot(robotReading,aes(x="",y=robotReading$V9)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V9")
p10 <- ggplot(robotReading,aes(x="",y=robotReading$V10)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V10")
p11 <- ggplot(robotReading,aes(x="",y=robotReading$V11)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V11")
p12 <- ggplot(robotReading,aes(x="",y=robotReading$V12)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V12")
p13 <- ggplot(robotReading,aes(x="",y=robotReading$V13)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V13")
p14 <- ggplot(robotReading,aes(x="",y=robotReading$V14)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V14")
p15 <- ggplot(robotReading,aes(x="",y=robotReading$V15)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V15")
p16 <- ggplot(robotReading,aes(x="",y=robotReading$V16)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V16")
plot_grid(p9, p10, p11, p12,p13,p14,p15,p16, ncol = 8, nrow = 1)

p17 <- ggplot(robotReading,aes(x="",y=robotReading$V17)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V17")
p18 <- ggplot(robotReading,aes(x="",y=robotReading$V18)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V18")
p19 <- ggplot(robotReading,aes(x="",y=robotReading$V19)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V19")
p20 <- ggplot(robotReading,aes(x="",y=robotReading$V20)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V20")
p21 <- ggplot(robotReading,aes(x="",y=robotReading$V21)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V21")
p22 <- ggplot(robotReading,aes(x="",y=robotReading$V22)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V22")
p23 <- ggplot(robotReading,aes(x="",y=robotReading$V23)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V23")
p24 <- ggplot(robotReading,aes(x="",y=robotReading$V24)) + geom_boxplot(fill = "#56B4E9", color = "black",width=0.5) + theme(axis.title.y=element_blank()) + labs(x="V24")
plot_grid(p17, p18, p19, p20,p21,p22,p23,p24, ncol = 8, nrow = 1)

library(reshape2)
head(melt(robotReading))
library(ggplot2)
ggplot(data = melt(robotReading[,1:24]), mapping = aes(x = value)) +geom_histogram(bins = 10) + facet_wrap(~variable, scales = 'free_x')
library(DataExplorer)
plot_str(robotReading)
plot_missing(robotReading)

robotReading %>%
  keep(is.numeric) %>%                     # Keep only numeric columns
  gather() %>%                             # Convert to key-value pairs
  ggplot(aes(value)) +                     # Plot the values
  facet_wrap(~ key, scales = "free") +   # In separate panels
  geom_density() 
library(corrplot)
corrplot(cor(robotReading[,1:24]), method="pie")

meltData <- melt(robotReading[,1:24])
boxplot(data=meltData, value~variable)

require ("lattice")
xyplot(V7 ~ V10, robotReading, groups = robotReading$Class, pch= 20)
xyplot(V5 ~ V17, robotReading, groups = robotReading$Class, pch= 20)

