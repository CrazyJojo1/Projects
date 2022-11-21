#Adding and Deleting Components
#.................

#If you need to add a character vector to a list
"New Information" #a single character vector
#our current list contains 3 components
#This will be the 4th component

list_rl1[[5]] <- "New Information"

list_rl1[c(4,5,6)] <- NULL
list_rl1[1:3]

#..............................
#find hours where utilization is unknown (NA's) -
#numeric vector (use subsetting and is.na())
RL1[is.na(RL1$Utilization),"PosixTime"]

#................adding a new list component
#1st way to add a list and place an object in it
#adding new component using a dollar sign
list_rl1$UnknownHours <- RL1[is.na(RL1$Utilization),"PosixTime"]
#2nd way- using double square bracket
#first let's delete this 
list_rl1$UnknownHours <- NULL
#2nd way
list_rl1[["UnknownHours"]] <- RL1[is.na(RL1$Utilization),"PosixTime"]
#check
list_rl1
#obtain the object from the new list component
list_rl1[["UnknownHours"]]
list_rl1$UnknownHours
#obtain 4th list component
list_rl1["UnkownHours"]

#Your existing list contains 6 list components
#what is add 9th list component instead of 7th 
list_rl1[[9]] <- "New"
#if you do add a non-consecutive list component number, R will still run the code
#But components which are not specified will have NULL value.

#..........deleting list component
list_rl1[5:9] <- NULL
#..........................thing to remember
#Note: if you delete 3rd list component in a list of 5.
#then list indexation will self-adjust.
#meaning?
#the 4th list component will be 3rd list component
list_rl1[3]
#it is going to be 4th ....which previously was 4th list component.

#This different to what we see in a data frame
#In Data frame - you would need to reindex the rownumbers when you delete your rows
#rownames(name of the dataframe) <- NULL
#rownames(name of the dataframe) <- 1:nrow(name of the data frame)
#.......................

#add another component to existing list
#5. Build data-frame for "RL1 machine" - Data-Frame
RL1
list_rl1[[5]] <- RL1
names(list_rl1)[5] <- "Data"
names(list_rl1)
?names
#now if you print your list..
#it is massive as R prints every object contained in the list components

#so inorder to explore this huge list
#use functions
summary(list_rl1)
str(list_rl1) 



