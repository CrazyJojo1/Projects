#What is a list
#a data structure that allows you to store data in it
#a data structure that can hold vectors of different type
#a data structure that can store 2D,1D objects
#e.g. vectors, data frame, matrix, plots etc.

#How to create a list?
list()
#let's create a list
x <- 1:10
y <- matrix(x,nrow=2,ncol=5,byrow=T)
z <- list(x,y)
#z is a list of two what contains a numeric vector and a matrix

#Why to create a list?
#It is like a directory
#you can store quite a lot of information in it.
#one function that package quite a lot of things in it.

#Coal mining
#Coal moves from mining place to coal terminal via trains and 
#In Coal terminal it is stocked (in stockyard) - place where different grade coal is mixed and then prepared to be shipped
#From coal terminal it is moved to jetty
#from Jetty it is moved to ships

#The coal terminal work 365 days and 24/7

#Companies use data analytics to figure out when machines need to be overhauled.
#Every minute of not using those machines... cost coal companies money
#using data.. you are calculate when their performance was dropping and 
#how that is affecting the output.

#adding column
#dataframe$newcolumn name <- 1- existing column

#POSIX
#When you import data, it may have date and time column
#But working with them ... you must know their format
#is the time format in European (dd/mm/yyy)
#or is American time format (mm/dd/yyyy)

#When you don't know .... you use POSIX
#it allows you to have a standard time format
#helps you understand the dates and time better

#how to use POSIX
 a <- as.POSIXct("2016-05-29 16:00:00",format="%Y-%m-%d %H:%M:%S")
a
b <- as.POSIXct("1969-12-31 23:59:00", format = "%Y-%m-%d %H:%M:%S", tz = "UTC")
b

#Things to note
#always enter the date in the same format as is given
#%Y is used for year in 4 digit (2016, 2021)
#%y is used for year in 2 digits (16,21)
#use capital letters for hour, minute and second

list_rl1
summary(list_rl1)
#...........................................Project

getwd()
#import data
R <- read.csv("machine.utilization.csv")
#explore data
head(R,20)
tail(R,20)
summary(R)
#convert machine column into a factor
R$Machine <- factor(R$Machine)
#We have 5 machines 
#1. machine name - single character vector
#2. (min, mean , max) utilization for the month (exclude unknown hours) - numeric vector
#3. has utilization even fallen below 90%? - logical vector
#4. find hours where utilization is unknown (NA's) - numeric vector (use subsetting and is.na())
#5. Build data-frame for "RL1 machine" - Data-Frame
#6. Plot for "all" the machines - Plot
rm(RL1)
#step1 #We need data for RL1
RL <- R[R$Machine =="RL1",]
#explore RL1
tail(RL)
summary(RL)
#eliminate other machine names from the summary
RL$Machine <- factor(RL$Machine)
#start creating list 
list <- list("RL1") #step one is done
#we need to find min, max and mean of utilization
#find utiilization
RL$Utilization <- 1 - RL$Percent.Idle 
#see if the new column is added to our data frame
summary(RL)
#we already have min, max and mean in the summary
#let's create a numeric vector that contains all three values
#use formula to find min, max and mean
Stats <- c(
            min(RL$Utilization,na.rm=T),
            mean(RL$Utilization,na.rm=T),
            max(RL$Utilization,na.rm=T)
           )
#add that to the list
list$stats <- Stats
list
#add name to the first list component
names(list)[1] <- "machine"

#Ok.. two things done!

#3. has utilization even fallen below 90%? - logical vector
RL$Utilization <0.9
#remove NA and get the row number ..... numeric answer

which(RL$Utilization <0.9)
#get single numeric vector 
length(which(RL$Utilization <0.9))
#now if length >0 , means utilization has fallen below 90%
length(which(RL$Utilization <0.9)) > 0
#put the result under object name
util_under_90 <- length(which(RL$Utilization <0.9)) > 0
#add this to the list
list$PerformanceDrop <- util_under_90
#check your list
list
#3rd done!
#4. find hours where utilization is unknown (NA's) - 
#numeric vector (use subsetting and is.na())
RL[is.na(RL$Utilization),]
#we need to find hours
#get the time format right
#use of POSIXct
tail(RL)
RL$Timestamp <- as.POSIXct(RL$Timestamp,
                     format="%d/%m/%y %H:%M")
#check the Summary
summary(RL)
#now it is not a character vector
#it is numeric vector

RL[is.na(RL$Utilization),"Timestamp"]
#this gives us the result we been looking for
#save it in an object
Hours_unknown <- RL[is.na(RL$Utilization),"Timestamp"]
#add this to our existing list
list$Hours <- Hours_unknown
#check list
list
#Ok...4th done
#5. Build data-frame for "RL1 machine" - Data-Frame
#we already have it 
#add that to our list
list$Dataframe <- RL
#check list
summary(list)
list
##6. Plot for "all" the machines - Plot
#use data frame that contains all the machines
#add utilisation column first
summary(R) 
R$utilization <- 1 - R$Percent.Idle 
R$Timestamp <- as.POSIXct(R$Timestamp,
                           format="%d/%m/%y %H:%M")
#activate ggplot2
library(ggplot2)
#create the base layer
p <- ggplot(data=R)
p
#add 2nd layer
p + geom_line(aes(x=Timestamp ,y=utilization,color=Machine))
#add facet grid
plot <- p + geom_line(aes(x=Timestamp ,y=utilization,color=Machine)) +
  facet_grid(Machine~.) + 
  geom_hline(yintercept=0.9,
             color="Grey",
             linetype=3,
             size=1.2)
#Insights from plot
#you can clearly tell by looking at the plot that
#machine RL1 and SR6 utilization did fall below 90% mark.
#advantage of using linetype in your charts

#final step
#add plot to the list
list$Plot <- plot
#check list
summary(list)
list
