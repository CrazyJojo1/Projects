#adding your own functions into apply family functions

#This is like nesting your own function with Apply Family 
#this allows you to use Apply Family in a much better way.

#calculate row means
lapply(Weather, rowMeans)
#rowMeans is a pre-defined function in R
#What if ... we can create our own function and use that instead

#Syntax:
#lapply(object name, function(x) Body of the Function)
lapply(Weather, function(x) x[1,])
#a function(x) means a function with at least one argument(x)
#This argument is what the lapply function will be iterating over.

function(x) x[1,]
#means, it takes a list component- x is list component 
#and select the first row from it.
#so this is what is happening:
Weather$Chicago[1,]
Weather$Houston[1,]
Weather$NewYork[1,]
Weather$SanFrancisco[1,]
#you can do the same using
lapply(Weather, "[",1,)
#..........................
#get the fifth row for each of the matrices
lapply(Weather, function(x) x[5,])
#or
lapply(Weather, "[", 5,)
#...................
#let's look at the month of December
lapply(Weather, function(x) x[,12]) #or
lapply(Weather, "[",,12)

#.............................how functions can make life easy
#let's say you got to calculate the difference between AvgHigh_F and AvgLow_F
lapply(Weather, function(x) x[1,]-x[2,])
#Note: you can use another alphabet than x 
#results will still be the same
lapply(Weather, function(a) a[1,]-a[2,])
#........................................
#2. A table showing : How much temperature fluctuates each month from min to max.(in %)

#solution -(find the temperature difference. Take min. temperature as the base.
#To calculate this find (min-max)/min - you are basically calculating 
#the relative fluctuation in temperature w.r.t. the minimum temperature.)

#To calculate the relative change
lapply(Weather, function(a) (a[1,]-a[2,])/a[2,])
#why dividing with a[2,]??
#because we are taking minimum temperature (AvgLow_F) as the minimum

#since the results has too many decimal points .... do rounding off
?round
x <- lapply(Weather, function(a) round((a[1,]-a[2,])/a[2,],digits=2))
     
#Insights
#In chicago - jan is the month were the function is the highest.
#But for most months, the temperature fluctuation on average is close to 23%

#............................this is deliverable 2 (TEMPERATURE fluctuation)

x[[1]]
#...................................1st way to delete the rownames o
#f the objects present in the list component
rownames(x[[1]]) <- NULL
rownames(x[[2]]) <- NULL 
rownames(x[[3]]) <- NULL
rownames(x[[4]]) <- NULL
#..............................................
rownames(x[[1]]) <- "AvgHigh_F"
rownames(x[[2]]) <- "AvgHigh_F" 
rownames(x[[3]]) <- "AvgHigh_F"
rownames(x[[4]]) <- "AvgHigh_F"
#...............................
#2nd way to delete the rownames of the objects of a list

for(i in 1:4){
  rownames(x[[i]]) <- NULL
}
#........................................
