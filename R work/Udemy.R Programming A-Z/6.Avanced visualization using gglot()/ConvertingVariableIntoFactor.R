
#In the homework 5 exercise - you see year as a numeric vector
str(data)
#year is an interger vector
data$Year

#it would be better if I can convert that integer into a factor
factor(data$Year)
#now it has two levels :- 1960 and 2013

#creating an object or variable name- year
year <- factor(data$Year)
#using levels() to check values in that variable
levels(year)
str(data)
data$Year <- year
str(data)

#now your column Year is no more a int vector.

data
#you are all set....















