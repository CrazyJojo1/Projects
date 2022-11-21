

#how exactly boxplot work?

#let's say you have 10 observations
#to make a boxplot...steps.
#1. physically count number of observations
#2. arrange all these observations in ascending order
#2. take the middle 
#(for 10 total observation) - middle one is 5.5 element 
#this gives you the median 
#now find 3rd quartile - middle value between max and median
#for 10 observations - 
#max value is 10 the element
#median is 5th element
#from 6 till 10 - middle value is 8
#now find 1st quartile- middle value between min and median
#between 1st element and 4th element
#1st qaurtile = 3

#this gives you box
#now draw whiskers - the lines that connect box with min and max
#.............your boxplot is built
#takeaway : you divide the data into equal number of 4 quartiles.
#first 25% - between min and 1st quartile
#2nd 25 % - between 1st quartile and median
#3rd 25% - between median and 3rd quartile
#4th 25% - between 3rd quartile and max.

#length of the box = interquartile range
#in other words, interquartile range = Q3 - Q1

#note:
#When constructing boxplot, 
#you wanna make sure your analysis is not affected by outliers
#for instance, if any observation is too far away... 
#you exclude it from the construction of the box

#how do we determine if the observation is too far away??
#1.5*(interquartile range) - cutoff box
#if any observation falls above the cutoff limit, then 
#you don't add that to the boxplot whiskers

#......understanding the variance
#if the box is narrow,, meaning
#it is small, then variance is low
#in other words, observations are very close to each other
#this tells us that, most observations fall close to the median
#In some analysis, this is considered good
#e.g. sales data had small boxplot means
#sales are more consistent, you are more likely to 
#have a number close to the median

#if box is long, then
#variance is high 

#understanding variance:
#deviation from the mean
#high variance is equatable to high volatility
#
#for instance, you are looking at a boxplot for sales figures
#boxplot based on presented data is long
#this implies, sales figures are fluctuating too much
#sometimes it is too low and sometimes it is too high
#there is more uncertainty to sales















