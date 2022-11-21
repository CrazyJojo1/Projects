#check the working directory
getwd()
setwd("/Users/rajanbawa/Documents/R work/Homework.Last")
getwd()
mov <- read.csv("Section6-Homework-Data.csv")
#data exploration
head(mov)
mov$X <- NULL
head(mov)
summary(mov)
str(mov)
#two variables that we need for axis -
#Genre (x) and Gross...US(y)
#two variables that we need for mapping -
#Studio(color) and Budget...mill.(size)

#x, y, color, and size are part of aes

#activate ggplot2
library(ggplot2)

#cool insight
ggplot(data=mov,aes(x=Day.of.Week)) +geom_bar()
#not a single movie released on Monday
#why not using geom_histogram?
#because Day.of.Week is not a continuous variable
#continuous variable is something that you can measure 
#days of a week are fixed values.....

#for numeric variables:
#use geom_histogram()
#for categorical variable:
#use geom_bar()

#What you see?
#not a single movie released on Monday
#most movies are released on Friday approx.(500/608)
#120/608 released on Wednesday
#Some on Thurday
#Very few on Sunday, Saturday, and Tuesday
#zero movies on Monday

#why??
#Studios decide dates of release based on their behavior study
#They know that most people are movie goers on Friday
#or on midweek (Wednesday)

#..........
#Actual challenge

#Build Filters
#filter studios
stu <- mov$Studio=="Buena Vista Studios" | 
  mov$Studio=="Fox" | mov$Studio=="Paramount Pictures" |
  mov$Studio=="Sony" | mov$Studio=="Universal" |
  mov$Studio=="WB"
#filter Genre
gen <- mov$Genre=="action" | mov$Genre=="adventure" |
  mov$Genre=="animation" | mov$Genre=="comedy" |
  mov$Genre=="drama"
#We are using OR logical operator to say if either of these conditions 
#is true, then return TRUE value
mov$Studio <-factor(mov$Studio)
levels(mov$Studio)
#faster way of doing above operation
stu1 <- mov$Studio %in% c("Buena Vista Studios","Fox","Paramount Pictures","Sony",
                          "Universal","WB")
# percentage in percentage (%in%) -
#this operator is used to filter data frame
#so if you supply it a vector of values (e.g.c("Buena Vista Studios","Fox"), 
#and if that column(mov$Studio) matches any of these values, 
#then it will return TRUE
#in other words, %in% is doing OR operation for you 


#use subsetting to create an another data frame
mov1 <-mov[stu1&gen,]
#exploring new data frame
mov1
head(mov1)
summary(mov1)
str(mov1)
#we are left with 423 observations 

#...........plot
p <- ggplot(data=mov1, aes(x=Genre,y=Gross...US))
#we are just using x and y in aes()
#why we are not using color and size in the base layer??
#because the boxplot is not colored  and their size is not affected by budget
p

#add geometry
p + geom_boxplot()
#pay attention to the outliers
#these outliers are part of boxplot geometry

#adding jitter layer
p + geom_boxplot() + geom_jitter()

#But jitter is on the top
#putting jitter on the background
p + geom_jitter() + geom_boxplot(alpha=0.7)
#alpha is a parameter for adding transparency

#adding color and size to the jitter layer
p + geom_jitter(aes(size=Budget...mill.,color=Studio)) + 
  geom_boxplot(alpha=0.7)
#so color and size are now part of jitter aesthetics
#and transparency is set for all boxplot 

#the outliers are still in Black and
#for every outlier... jitter has created a dot 
#removing outlier
p + geom_jitter(aes(size=Budget...mill.,color=Studio)) + 
  geom_boxplot(alpha=0.7,outlier.color=NA)
#outlier.color=NA, means you want no color for boxplot outlier

#now we will create an object that stores the entire visualization
q <- p + geom_jitter(aes(size=Budget...mill.,color=Studio)) + 
  geom_boxplot(alpha=0.7,outlier.color=NA)

#non-data-ink part(theme layer)
q <- q + 
  ylab("Gross % US") +
  ggtitle("Domestic Gross % by Genre") +
  theme(text = element_text(family="MS Gothic"),
        axis.title.x=element_text(color="Blue",size = 25),
        axis.title.y=element_text(color="Blue",size = 25),
        axis.text.x=element_text(size = 20),
        axis.text.y=element_text(size = 20),
        plot.title = element_text(size=25),
        legend.title = element_text(size=25),
        legend.text = element_text(size=20)
  )
#changing name of the size parameter
q$labels$size <- "Budget$M"
#print it to see the change
q

#...................................
#let's see if you do so
p1 <- ggplot(data=mov1, aes(x=Genre,y=Gross...US,
                            size=Budget...mill.,
                            color=Studio)) +
  geom_boxplot() +geom_point()

#now your boxplot is of varying size and color
#This is not what you want....Correct!
#............................


