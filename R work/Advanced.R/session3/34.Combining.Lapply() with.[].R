#Combining lapply with [ ] operator

#Note: [ ], square bracket, is not a function like lapply, rowMeans(), etc..
#But you can combine it with lapply.

#What we do know
#main reason of [ ] is to use it to give indexation
#that allows us to get the specific element or select a specific cell.

Weather
#..................................................revision
getwd()
setwd("./Advanced.R/Weather Data")
getwd()
Chicago <- read.csv("Chicago-F.csv",row.names = 1)
Chicago
Houston <- read.csv("Houston-F.csv",row.names = 1)
NewYork <- read.csv("NewYork-F.csv",row.names = 1)
SanFrancisco <- read.csv("SanFrancisco-F.csv",row.names = 1)
#create a list
Weather <- list(Chicago = Chicago, Houston = Houston,
                NewYork = NewYork, SanFrancisco = SanFrancisco)
Weather
?lapply
lapply(Weather,rowMeans)
output <- list() #empty list
for(i in 1:4){
  output[[i]] <- rowMeans(Weather[[i]])
}
output
names(Weather)
names(output) <- names(Weather)
#....................................................end of revision
 
#how to extract the first element of the the 1st list object
#e.g. you need to get AvgHigh_F for Jan for Chicago
Weather$Chicago[1,1]
#what is happening here
Weather[[1]] #equalt o Weather$Chicago
#we need to get the cell in 1st row and 1st column  - [1,1]
Weather[[1]][1,1] 

#.........how to get this for the entire list
#meaning the first cell for each list objects

#you want to extract AvgHigh_F for Jan for all of the four cities (Chicago, houston ,NY and SanFranciso)
lapply(Weather,"[", 1,1)
#"[",1,1 means [1,1]
#if you specify "[", then R will asssume it to be [ ] - use double quotations
#optional argument is 1,1
lapply(Weather,"[",3) # will select third column
lapply(Weather,"[",1,) #1, will select the first row
lapply(Weather,"[",1) # 1 alone will select the first column

#get the first row for all four cities
lapply(Weather, "[",1,) #gives you AvgHigh_F
#get the 3rd column for all cities
lapply(Weather,"[",3) 
#or
lapply(Weather, "[", ,3)





