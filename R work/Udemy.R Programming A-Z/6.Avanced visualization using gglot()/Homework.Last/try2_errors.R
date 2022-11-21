list <- read.csv("Homework.Last/Section6-Homework-Data.csv")
list
list$X <- NA
list
str(list)
colnames(list) <- c("Day","Director","Genre","Movie","ReleaseDate","Studio","AdjustedGross",
                    "Budget","Gross","RatingByIMDb","RatingByMovieLens","OverseasRevenue",
                    "OverseasPercent","Profit","ProfitPercent","Runtime.min","USRevenue","GrossUSPercent","R")

filter <- list[list$Genre==c("action","adventure","animation","comedy","drama"),]
filter
str(filter)
filter$R <- NULL
filter$Studio <- factor(filter$Studio)
levels(filter$Studio)
filter$Studio==c("Buena Vista Studios","Fox","Paramount Pictures","Sony",
                 "Universal","WB")
filter
Studios <- filter$Studio==c("Buena Vista Studios","Fox","Paramount Pictures","Sony",
                            "Universal","WB")

library(ggplot2)
u <- ggplot(data=filter,aes(x=Genre, y=GrossUSPercent))
u+ geom_point()
u+geom_jitter(aes(size=Budget,color=Studio)) +geom_boxplot(alpha=0.6) +
  ylab("Gross % US")+ggtitle("Domestic Gross % By Genre") +
  theme(axis.title.x=element_text(color="Blue",family="Comic Sans MS"),
        axis.title.y=element_text(color="Blue",family="Comic Sans MS"),
        plot.title = element_text(family="Comic Sans MS"),
        legend.title = element_text(family="Comic Sans MS"),
        legend.text = element_text(family="Comic Sans MS"))
#warnings() is used to see the warnings messages
warnings()
  
#gross % US is what percentage of total revenue made by movies in the US
  
#Comic sans ms font has been used
  
  
  
