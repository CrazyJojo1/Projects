read.csv(file.choose())


stats

#You have 195 rows and 5 columns.....That is a lot of data
#So it is easy to get lost

#Then how can we explore data without getting lost??
#Their are couple of functions that can do be useful 
#Remember: couple of means a lot here
#functions
#1 nrow(table name) - tells you about number of rows
nrow(stats)
#Why number of rows is important?
#In auditing or have something as a record.
#When importing data, it is best to add a reminder (a comment)to yourself...
#Comment: I have imported  data with 195 rows and 5 cols
#if something goes wrong... you are use this info 

#2 ncol(table name) - tells you about number fo columns
ncol(stats)

#3  head(table name) - prints top six rows
head(stats)
#this function comes handy when you are working with a large data set.
#This way you get to see the column names and some sample data right away
#this gives you a feel of what you are about to work on..

#4 tail(table name) - shows you the bottom six rows
tail(stats)
#this function is good to check if you data is ordered alphabetically throughout

#5 add arguments to head() and tail()
#you need moe number of rows than six.... give 'n' as an argument
head(stats, n=11)
tail(stats, n=9)
#you can choose 'n' as per your need. Just remember head is the top and tail is the bottom

#6. str(table name) - str stands for structure. 
str(stats)
#it will summarize the data for you. e.g.
#country.name is a character vector 
#Birth.rate is a numeric vector and so on..

# Income.Group : factor w/ 4 levels means??
#This means you have four values for Income.Group
# "High Income" "Low Income" "Upper middle income" "Lower middle income"

#7 runif() - pronounced as /r-unif/ - means random variables distributed uniformally
rnorm(5) #gives you 5 random values for a normal distribution
runif(5) #gives you 5 random values for a uniform distribution
#..........
#           this function is not to be used for this Data frame.

#8 summary() - gives you summary of stats
summary(stats)
#for numeric variable - it gives you Minimum, Median(middle value), Mean(Average value) and Maximum value.
#median tells you 50% of values are less than median and 50% values greater than median.
#1st quartile tells the median of 25%. The value that is middle value of the sample existing between (lowest and median)
#2nd quartile is the median- 
#3rd quartile is the middle value of a sample existing between (maximum value and median)
#for character variable - It gives you length of vectors

#internet usage exist between 0.90(min) and 96.55(max). 
#this tells you that you percentage goes as low as 0% and as high as 96.55%.

#Birth rate min(7.90) and max(49.66)..
#this means it is better to look birth rate between these values.

#........ this way summary() function can be useful when making use of it.






















