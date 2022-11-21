
#Naming components of a list
list_rl1
#1st way
#how to check the names of a list
names(list_rl1)
#this is similar to how we used to check names for a vector

#adding names to list components
#R allows you to assign value to a function
#function - names(object)
#value - c()
#this way you alter the object(add list names) that is passed in that function
names(list_rl1) <- c("Machine","Stats","LowThreshold")
#check
list_rl1
#you have $Machine, $Stats and $LowThreshold as names

#2nd way to names the list : similar how we do with data frames
#doing it when creating the list

#first let's re-create the list
rm(list_rl1)
list_rl1 <- list(Machine = "RL1",
                 Stats = util_stats_rl1,
                 LowThreshold = util_under_90_flag)
names(list_rl1)
list_rl1 
#you get the same result and it remove that extra step of using names().
#Plus you don't need to use quotation marks for the names 

#Why do we need names for list components
#This makes our working with List convenient







