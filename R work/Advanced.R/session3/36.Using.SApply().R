#using Sapply()
?sapply
#sapply() is very similar to lapply()
#s stands for simplify
#simplifies the output
#your output not going to be a list 
#how it works
#it calls an lapply() and seeing if the output can be turned into a vector or 
# a matrix, rather than a list
Weather
#AvgHigh_F for July
lapply(Weather,"[",1,7)
#let's do exactly the same thing using sapply()
sapply(Weather,"[",1,7)
typeof(sapply(Weather,"[",1,7))
is.vector(sapply(Weather,"[",1,7))
#you get a numeric vector and it is a named vector

#Note: Lapply() is always return you a list 
#But sapply() may give you a vector or a matrix - if the data is 1-D then it will be a vector
#if the data that you extract using sapply() is 2-D then it will return you a matrix.

#AvgHigh_F for the last quarter
#last quarter will from oct to december
lapply(Weather, "[",1,10:12)
sapply(Weather, "[",1,10:12)
is.vector(sapply(Weather, "[",1,10:12)) #it is not a vector as it is a 2-D object
is.matrix(sapply(Weather, "[",1,10:12))
#the result is a matrix

#Benefit of using sapply()
#it is easier to read information from a matrix or a vector than reading information from a list
lapply(Weather, rowMeans)
sapply(Weather, rowMeans)
round(sapply(Weather, rowMeans),digits=2)
is.matrix(sapply(Weather, rowMeans)) #TRUE

#...........................Project
#1st part
#A table with annual averages of each observed metric for every city.
round(sapply(Weather, rowMeans),digits=2)
#sapply gives us a named matrix and matrix gives us a table.
#insights:
#Chicago had the lowest temp on average compared to the rest of the cities.
#Chicago also score the lowest temperature on average.
#This shows Chicago is a cold city on average. 
#Houston is the hotest city on average and it also experiences more rainy days than the rest. 

#Rainfall on average is high in Houston
#Newyork and Chicago are neck to neck in number of rainy days. 
#San Francisco has least rainy days

#SanFrancisco take the lead when it comes to number of sunny days
#Chicago experience lowest hours of sunshine on average.

#.......................................
#2nd part
#A table showing : How much temperature fluctuates each month from min to max.(in %)
lapply(Weather, function(a) round((a[1,]-a[2,])/a[2,],2))
?round
#Note: You must apply the round function in the body of the function itself 
#if you do apply round to the result of lapply like shown below, it will result an error
round
round(lapply(Weather, function(a) (a[1,]-a[2,])/a[2,]),digits=2) #you get an error

#We need to get a table - a matrix
sapply(Weather, function(a) round((a[1,]-a[2,])/a[2,],2))
#This gives us our 2nd deliverable.
#Insights:
#temperature fluctuation gives you the percentage increase in temperature.
#Chicago had the highest temperature fluctuation in the month of Jan. (78%)
#SanFrancisco had the lowest temperature fluctuation through out the year
#most fluctuations for all four cities lie between .23-.3
#Houston and NewYork has higher temperature fluctuations during Winters and low in Summers
#.............................................
#By the way
#sapply() is a version of lapply()
#a small test
?sapply
sapply(Weather, rowMeans)
sapply(Weather, rowMeans,simplify = TRUE)
#By default, Simlify = TRUE, so you don't need to specify it.
sapply(Weather, rowMeans,simplify = FALSE) #you get the same result of lapply(), but one thing is missing

#simplify = FALSE, USE.NAMES = FALSE for you to get a lapply() result.
#But in order
sapply(Weather, rowMeans,simplify = FALSE, USE.NAMES = FALSE) #this result is same as lapply()


sapply(Weather, function(a) round(rowMeans(a),2))
