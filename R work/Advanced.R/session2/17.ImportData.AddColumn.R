
#so a single list will have 6 list elements.

#..........................................
#Data file
#date and hour of that month
#machine names - RL1, RL2, and so on....

#percentage idle - what percentage of capacity was unused
#e.g. 1/09/2016 12:00 RL1 0.030963095 means
#machine RL1 was used 97% between 11:00 and 12:00 of that given date
#3% of the time that machine was idle

4.37
#..............................
#What coal mining is? 
#What coal terminal does?
#Why is it important for them to look at utilization?
#...................

#Importing file
getwd()
setwd("/Users/rajanbawa/Documents/R work/Advanced.R/")
getwd()
util <- read.csv("machine.utilization.csv")
#explore the data
 head(util)
tail(util)
dim(util)
nrow(util)
ncol(util)
str(util)#percent.Idle has NA values
summary(util)#we can convert machine into factor variable
#converting Machine column into a factor
util$Machine <- factor(util$Machine)
levels(util$Machine)
#check using summary
summary(util) #we have 720 machines of each kind. And there are 5 kinds of machines
#check the month timeline
util$Timestamp
tail(util$Timestamp)
#data is for the September month.

#...................................ROUGH WORK
#machine name
#list(util$Machine,util$utilization,util[util$Machine == "RL1",],plot + geom_point(aes(color=Machine)))
#util <- util[!is.na(util$Percent.Idle),]
#rownames(util) <- NULL
#util$utilization <- 1 - util$Percent.Idle

#util$utilization < .9
#util[util$Machine == "RL1",]

#str(util)
#plot <- ggplot(data=util, aes(x=Machine,y=Percent.Idle))
#plot + geom_point(aes(color=Machine)) 
#rm(plot)

#......................................ROUGH WORK 


#.....................actual assignment

#deriving utilization column
util$Utilization <- 1 - util$Percent.Idle
#check if the new column has been added
str(util)
head(util$Utilization,50)
tail(util$Utilization,50)
#added

#now your data is ready.....next file is "19.Handling.Date-Times"













