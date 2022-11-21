
#Subsetting a list
#..........................................
#challenge
list_rl1
summary(list_rl1)
#access the first date in $UnknownHours
#3 ways to do that
list_rl1$UnkownHours[1]
list_rl1[[4]][1]
list_rl1[[c(4,1)]] #here, R is doing implicit coercion, 
#it is convering posixct into numeric number

#changing the name
names(list_rl1)[4] <- "UnknownHours"
#.............................................
# subsetting
list_rl1[1]

typeof(list_rl1[1]) #this is a list

list_rl1[1:3]
list_rl1[c(1,4)]
#in order to save the list
sublist_rl1 <- list_rl1[c("Machine","Stats")]
#get the mean from this sublist
sublist_rl1[[2]][2]
sublist_rl1$Stats[2]

#Benefit of subsetting list
#When list is too big, 
#subsetting allows you to work with just those components that you need

#difference between [[]] and []
#[] is used to access list components
#[[]] is used to access the object within the listed components

#[[]] is NOT for subsetting
list_rl1[[1:3]]
#error
#why?
#[[]] is used to access the single object present under a single listed component
list_rl1[[1]]
#this gives the object present in single list
list_rl1[[2]]
#this again gives you a single object. 
#And this object further has its 3 object_elements. But it is till just one object

















