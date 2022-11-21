
#visualizing a data frame
#.......................
#Qplot
?qplot()
#to use qplot, you must have ggplot2 installed
install.packages("ggplot2")
#activate the package using library(). 
#all these packages are stored in a directory called "library". 
library(ggplot2)
#check if your R has qplot function using help (?)
?qplot()
#qplot stands for quick plot

#.................
#learning qplot by using
#Introduction with qplot()
#1. passing data frame to a qplot. your data frame is 'stats'
#specify the variables for your x and y axis
#Let's say you wish to graph internet users 
qplot(data=stats, x=Internet.users)
#here your y-axis automatically becomes "frequency"

#..........Understanding histograms.........
#When drawing a histogram
#you plot bars (vertical thick bars)
#thickness of this bar is decided by you...
#this thickness is called bins.
#let say you have 100 data values
#rather than plotting all data values in individual lines
#you group data.... number of data in one group is called bin.
#
#suppose for 100 data values, min value is 1 and highest value is 51.
#range = 51-1 = 50
#let's say you choose 5 as your bin value
#you decide to group 5 values.
#your new data values will 


#30 data values means you have 30 bins
#bin.width = no.of observations/bins
#195/30 = 6.5
stats$Internet.users
min(stats$Internet.users)
max(stats$Internet.users)

(stats$Internet.users<7.4)

count <- 0
for(i in 1:195){
  if(stats$Internet.users[i]>13.9 && stats$Internet.users[i]<20.4){
    count <- count+1
  }
}
count
stats[stats$Internet.users>13.9 & stats$Internet.users<20.4,]
#count tells you how many countries have internet usage that falls within this range

#and  qplot() is calculating these values and plotting them as heights of your vertical bars

#beauty of the ggplot() and qplot()
#is that lot of stuff is done on behalf of you
#it adds the x-axis, y-axis , bins and counts the frequency etc.
#.........................

#let's specify y-axis
qplot(data=stats, x=Internet.users, y=Birth.rate)
#This results in a scatter plot
#this explains, countries with low birth rate have high internet users

qplot(data=stats, x=Income.Group, y=Birth.rate)
#your income group is a categorical variable
#meaning it has four values within which most data falls in.

#this low income group has highest birth rates, while highest income group has low birth numbers

#..........
#till now we have seen qplot() choose right representation by itself
#specify one variable.... you have histogram
#choose two variables.... you get scatter plot
#......................
#What happens if you give other parameters to it
qplot(data=stats, x=Income.Group, y=Birth.rate, size=3)
#this increases the size of your dots.
#and it adds a legend that tells the size.

#increase that number
qplot(data=stats, x=Income.Group, y=Birth.rate, size=10)
#nothing changes, size is same as that for size=3. 
#just legend says size of dot is 10.

#..........
#what is happening?
#when you use parameter called size,
#and you assign this parameter a value, e.g. size=10. 
#then, qplot is mapping it.
#mapping means different points will have different sizes.
#......
#The correct way to use parameter size is to use I, capital letter, in order to assign it a value.
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(15))
#now size increases as you change its value.
#plus you don't have the legend.

#so if you want to assign a value for size, or color, then use I around that number
#this is prevent R from mapping that value.

#.........
#let's add color
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(10),
      color=I("orange"))

#again, we are using I with the value we are feeding in that parameter.

#let's run the same code without I
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(10),
      color="orange")
#you have the color, but it is not the color you typed
#Also, now you have the legend.
#.........

#trying parameter geom
qplot(data=stats, x=Internet.users, y=Birth.rate, geom = "boxplot")
?boxplot
#boxplot is like a candlestick. order of points from the bottom
#min, 1st quartile, median, 3rd quartile, and max.

#..........
summary(stats)
#finding correlation between birth rate and internet usage
qplot(data=stats, x=Internet.users, y=Birth.rate, color=I("orange"),geom="")
#so you see a negative correlation between number of internet users and the birth rate.










