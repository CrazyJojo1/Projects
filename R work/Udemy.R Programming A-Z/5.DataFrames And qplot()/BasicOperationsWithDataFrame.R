

#Basic Operations with a data frame
#1. subsetting
#Looking at just first 10 rows
stats[1:10,]
#you could have done the same using head()
head(stats,n=10)
#But if you need to look at a specific rows
stats[c(2,100),]

#Remember how the [] work?
#1. looking at just the 1st row....it becomes a vector then a matrix
#we learned Drop= False parameter
#...............
stats[1,]
#check if it is still a data.frame........a 2-Dimensional object
is.data.frame(stats[1,])
#it is a data frame
#you don't need a Drop = False parameter

#extract 1st column
stats[,1]
#each character vector has double quotations
#is this a data frame
is.data.frame(stats[,1])
#it is not

stats[,1,drop=F]
#double quotations are removed and you have row_numbers as well.
is.data.frame(stats[,1,drop=F])
#now it is 2D or a data frame.
 
#Note: when you are selecting a single column of a data frame, then use drop=FALSE
#this will help you avoid errors

#...............
#Mathematical operations
#1 Multiply columns
colnames(stats)
#using dollar operator to select entire columns
stats$Birth.rate * stats$Internet.users

#Addition, subtraction, and division
stats$Birth.rate + stats$Internet.users
stats$Birth.rate - stats$Internet.users
stats$Birth.rate / stats$Internet.users

#dollar sign does come handy when working with data frames

#..........................
#Adding an additional column to your data frame
#let's say you want to add a column name MyCalc
stats$MyNewColumn <- seq(from=200,to=394)
#print and see if new column is added
stats
colnames(stats)
#if you want to add a mathematical result of two vector column
stats$Multiply.result <- stats$Internet.users * stats$Internet.users
stats

#These mathematical operations is possible as R is consdering each column element as a vector.
#You can't multiply a numeric vector with a character vector

#....................
#Recycling of vectors

#let's say you want to add a column with just 5 elements
stats$five.elements <- 1:5
#1:5 is a vector containing 5 vector elements 1 2 3 4 5

#And our data file has 195 rows
nrow(stats)

#why R is not showing an error
stats
#so 1:5 is getting replicated 39 times
rep(1:5,times=39)
#now you have 195 vector elements

#this replication is what is called recycling of vectors

#but for recycling number of rows need to a multiple of length of (1:5) 
#195 is a multiple of 5
stats$five.elements <- 1:4
#recycling cannot happen as row_length is not a multiple of new vector_length
stats

#................
#Removing a column
stats$MyNewColumn <- NULL
stats$five.elements <- NULL
stats$Multiply.result <- NULL

#check your data frame
stats

#your added columns have been removed

