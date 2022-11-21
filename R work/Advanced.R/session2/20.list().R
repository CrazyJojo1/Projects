
#What is a list?
#it is a data object that can contain a mix of data element
#Preparing a list
summary(util)
#Step1 : subset our data frame
#obtain data that contain only RL1 related info
RL1 <- util[util$Machine == "RL1",]
#explore this subset
head(RL1,20)
tail(RL1,20)
summary(RL1)
#In summary- we still have RL2=0, SR1=0 and so on 
#to eliminate that... not compulsory, but just looks better
RL1$Machine <- factor(RL1$Machine)
#checking summary if that still shows up
summary(RL1) #no doesn't - Good

#........................constructing our list
#Three things we will cover today
#1. machine name - single character vector
#2. (min, mean , max) utilization for the month (exclude unknown hours) - numeric vector
#3. has utilization even fallen below 90%? - logical vector
#2nd problem: create a numeric vector of length 3 that contain min,max and mean

util_stats_rl1 <- c(min(RL1$Utilization,na.rm = T),
                    mean(RL1$Utilization,na.rm = T),
                    max(RL1$Utilization,na.rm = T))

#print util_stats_rl1
util_stats_rl1
#insights : we never reached 100% utilisation in any given hour

#3rd problem : logical vector
#obtain logical vector
RL1$Utilization < 0.9
#obtain the row numbers that have TRUE value - use which() to obtain rownames
#which() ignores NAs and gives you rows that meet TRUE condition.
#Note - rownames of a data frame are numeric vector 
which(RL1$Utilization < 0.9)
#But the question asks: if there is even one value where utilization falls below 90%
length(which(RL1$Utilization < 0.9))
#length() calculates the number of row-names 
#Insights - 27 times the utilization falls below 90%
#but we need logical vector
#you really don't care if it is 27 times or 25 times
#you just want a logical answer saying YES, it did
#that means, you would need to convert length() into logical
#2 ways
#length() > 0, if it is greater than 0 that means you have some values that are TRUE
length(which(RL1$Utilization < 0.9)) > 0
#2nd way
#This is explicit coercion - you are converting length() into a logical.
#so if length()=non-zero value, then as.logical() gives you TRUE as answer
as.logical(length(which(RL1$Utilization < 0.9)))

#there you go- I am using 2nd one, but 1st one is equally right
util_under_90_flag <- as.logical(length(which(RL1$Utilization < 0.9)))

#flag means warning - as utilization jas fallen below 90%

#..........time to create a list
list_rl1 <- list("RL1",util_stats_rl1,util_under_90_flag)
#display list_rl1 result in console
list_rl1
#what do you see in the result
#1. all list elements are printed out vertically
#2. east list element is represented as [[list element]]..double square brackets
# [1] comes from a vector
list_rl1[[1]]
#when you use double quotation in subsetting- 
#it gives you the "elements" contain in that list element
list_rl1[1]
#using single quotation gives you list element - not the elements contained in the list
class(list_rl1[1]) #list
class(list_rl1[[1]]) #character vector

#conclusion:
#[[]] is indexation for list elements
#[] is indexation for elements contained in the list



x <- NULL
as.logical(length(x))








