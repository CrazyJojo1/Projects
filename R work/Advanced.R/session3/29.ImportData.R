getwd()
#change the working directory
setwd("Advanced.R/Weather Data")
#......................................
#shorter approach to set the working directory
#using relative path
setwd("./Advanced.R/Weather Data")
#".", dot represents the current folder where you are currently in.
#which means
#if your current working directory is "/Users/rajanbawa/Documents/R work"
#then you using dot(.) will mean that
#so just add the last bit
#...............................
#check
getwd()
#import first file
Chicago <- read.csv("Chicago-F.csv") 
#check
Chicago
#....................problem
#row names are not picked up, instead rownames are imported as a separate column in itself.
#fix??
rm(Chicago)
Chicago <- read.csv("Chicago-F.csv",row.names = 1)
#row.names=1, means take the rownames from the first column
#check now
Chicago
#now you have rownames instead of 1:5
class(Chicago) #it is a data frame
head(Chicago)
#import 2nd, 3rd and 4th file
Houston <- read.csv("Houston-F.csv",row.names = 1)
NewYork <- read.csv("NewYork-F.csv",row.names = 1)
SanFrancisco <- read.csv("SanFrancisco-F.csv",row.names = 1)
#check - best to do when you import any data
#check the values... each data-frame must have different values
Chicago
Houston
NewYork
SanFrancisco
#....................
#check how this data is imported
#is it a data-frame or matrix
is.data.frame(Chicago)
#it is a data.frame

#Convert it to a matrix
#why??
#Except rownames, all data is numeric
#which means it is of same data type
#Plus, many functions that we will be using is only applicable to a matrix only
#...........................
#explicit coercion
Chicago <- as.matrix(Chicago)
Houston <- as.matrix(Houston)
NewYork <- as.matrix(NewYork)
SanFrancisco <- as.matrix(SanFrancisco)
#check if they are converted into a matrix
is.matrix(Chicago)
#no need to check the rest.... if one is converted, rest would have.
#.......................
#let's put all of this into a list
Weather <- list(Chicago, Houston, NewYork, SanFrancisco)
#check
Weather #list contains 4 components
#explore list
Weather[1]
class(Weather[1]) #this is a subset of a list
Weather[[1]] 
is.matrix(Weather[[1]])#this is a matrix 
#................
#add names
#1st way
#names(Weather) <- c("Chicago", "Houston", "NewYork", "SanFrancisco")
#2nd way
Weather <- list(Chicago=Chicago, Houston=Houston, NewYork=NewYork, SanFrancisco=SanFrancisco)
#check list
Weather
Weather$Chicago #remember $ and [[]] gives you the object present in the list
is.matrix(Weather$Chicago) #it is a matrix
Weather[[1]] #same result

#........................................Rough work (not part of this..)


#Done!!
#1. A table with annual averages of each observed metric for every city. - 
 # solution - (to find annual average, you would need to sum the averages of each month/12)
View(Chicago)
Chicago[1,2:13]
year_avg_AvgHigh <- mean(as.numeric(Chicago[1,2:13]))
year_avg_AvgLow <- mean(as.numeric(Chicago[2,2:13]))
year_avg_AvgPrecip_inch <- mean(as.numeric(Chicago[3,2:13]))
year_avg_DaysWithPrecip <- mean(as.numeric(Chicago[3,2:13]))

?apply
apply(Chicago,c(1:5,2:13),mean)
dim(Chicago)


