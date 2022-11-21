
#Challenge
#....................visualizing correlation

qplot(data=stats, x = Internet.users, y = Birth.rate, size = I(4), color = I("red"))
#mapping is when are assigning a parameter(size) to a variable
#but since we wants to increase size of all the dots on scatter plot... we
#are not doing mapping.

#categorize the scatter plot by the income group of that country

qplot(data=stats, x = Internet.users, y = Birth.rate, size = I(4), color = Income.Group)
#This is called mapping:
#color = Income.Group, means we are assigning a parameter(color), a variable name
#When doing mapping, when assgining a variable to a parameter, make sure you don't use double quotations for that variable name

#Data analysis
#based on the plot, we are drive some conclusions
#1. majority of high income group fall in low birth.rate category
#high income is also high internet users.
#2. low income category has very high birth rate (2.5 times approx. compared to high-income group)
#low income group is also low internet user.

#Correlation is not causation
#this means even though their is a negative correlation between birth.rate and Internet.users.
#this doesn't imply, one causes another.
#you can not say, low internet usage leads to high birth-rate.....That will be wrong!




















