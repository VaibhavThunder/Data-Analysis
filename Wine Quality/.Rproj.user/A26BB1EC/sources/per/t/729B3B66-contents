wine = read.csv("winequality-red.csv")
str(wine)
summary(wine)
wine$rating <- ifelse(wine$quality < 4, 'bad', ifelse(wine$quality < 6, 'average', 'good'))
wine$rating <- ordered(wine$rating,levels = c('bad', 'average', 'good'))

# structure of red wine dataset 
str(wine)
summary(wine)

library(ggplot2)
#graph plot on quality 
ggplot(data = wine, aes(x = quality)) +geom_bar(width = 1, color = 'black',fill = I('orange'))
ggplot(data = wine, aes(x = rating)) +geom_bar(width = 1, color = 'black',fill = I('blue'))

#finding distribution of data base of actidity
grid.arrange(ggplot(wine, aes( x = 1, y = fixed.acidity ) ) + 
               geom_jitter(alpha = 0.1 ) +
               geom_boxplot(alpha = 0.2, color = 'red' ) +
               scale_y_continuous(lim = c(4,14)),
             ggplot(data = wine, aes(x = fixed.acidity)) +
               geom_histogram(binwidth = 1, color = 'black',fill = I('orange')) + 
               scale_x_continuous(lim = c(4,14)),ncol = 2)

#finding correlation matrix based on numeric columns 
cor(wine[sapply(wine, is.numeric)])

#The very first thing that caught my eye in this table is that Volatile acidity has a positive correlation with pH. But how can that be possible! We know that with the decrease in pH, acidity increases. So is it possible that a Simpson's Paradox is at play here? I will further investigate this peculiar characteristic.
#The variables most strongly correlated to quality are Volatile Acidity and Alcohol.
#Alcohol has negative correlation with density. This is evident from the fact that the density of water is greater than the density of alcohol.

#different box plots based on data 
ggplot(data = wine, aes(x = quality, y = fixed.acidity)) +
       geom_jitter( alpha = .3) +
       geom_boxplot(alpha = .5,color = 'blue') +
       stat_summary(fun.y = "mean", 
       geom = "point", 
       color = "red", 
       shape = 8, 
       size = 4)

ggplot(data=wine, aes(x = quality, y = volatile.acidity)) +
       geom_jitter( alpha = .3) +
       geom_boxplot(alpha = .5,color = 'blue') +
       stat_summary(fun.y = "mean", 
       geom = "point", 
       color = "red", 
       shape = 8, 
       size = 4)

ggplot(data=wine, aes(x=quality, y=citric.acid)) +
       geom_jitter( alpha = .3) +
       geom_boxplot(alpha = .5,color = 'blue') +
       stat_summary(fun.y = "mean", 
       geom = "point", 
       color = "red", 
       shape = 8, 
       size = 4)

ggplot(data=wine, aes(x=quality, y=residual.sugar)) +
       geom_jitter( alpha = .3) +
       geom_boxplot(alpha = .5,color = 'blue') +
       scale_y_continuous(lim = c(0,5)) +
       stat_summary(fun.y = "mean", 
       geom = "point", 
       color = "red", 
       shape = 8, 
       size = 4)

ggplot(data=wine, aes(x=quality, y=chlorides)) +
     geom_jitter( alpha = .3) +
     geom_boxplot(alpha = .5,color = 'blue') +
     scale_y_continuous(lim = c(0,0.2)) +
     stat_summary(fun.y = "mean", 
     geom = "point", 
     color = "red", 
     shape = 8, 
     size = 4)
#Even though weakly correlated, from the decrease in median values of the Chlorides with increase in quality, it seems that lower percent of Chloride seems to produce better wines.

