#Very advanced topic

#which.max()

#something that we covered last time
x <-sapply(Weather, apply, 1, max) #this gives us the annual max for each parameter for each city.
sapply(Weather, apply, 1, min)#gives you annual min

#Now instead of getting the annual max and min..
#you need to find name of the month that experienced the max and min

#get the matrix that has months experiencing max and min
#............................concept of which.max()
?which.max
which.max(x) #this gives you the length of x (5*4=20)
#which.max returns the index of the min and max vector
Chicago[1,]
which.max(Chicago[1,])

#this is gives us the position(index)
#max was 84 which is 7th position 
#.........problem
#This gives you a number
#But we need the name of the month
#use names() - this gives you the column name
names(which.max(Chicago[1,]))
names(Weather$Chicago)
names(Weather)
#now we need to run that for all the remaining rows
names(which.max(Chicago[2,]))
names(which.max(Chicago[3,]))
names(which.max(Chicago[4,]))
names(which.max(Chicago[5,]))
#this looks similar to apply()- use 1 for the row
apply(Chicago, 1, which.max)
#but if you need to apply which.max for all the cities
#then you will use a list that contains this matrix objects
#sounds like lapply()
lapply(Weather, apply,1,which.max) 
lapply(Weather,function(a) apply(a,1,which.max))
sapply(Weather, apply,1,which.max)

#..............problem
#rather than getting the index ... we need the name of the month
apply(Chicago, 1 , function(a) names(which.max(a)))
#here "a" would be rows of the matrix (Chicago,1)
lapply(Weather, apply, 1, function(a) names(which.max(a)))
#But we need a matrix
sapply(Weather, apply, 1, function(a) names(which.max(a)))
#........................do the same for the min
sapply(Weather, apply, 1, function(a) names(which.min(a)))
#...........................2nd way
lapply(Weather, function(a) apply(a,1,function(x) names(which.max(x))))
sapply(Weather, function(a) apply(a,1,function(x) names(which.max(x))))
sapply(Weather, function(a) apply(a,1,function(x) names(which.min(x))))

#Note
#a will be Weather$Chicago, Weather$Houston, Weather$NewYork, Weather$SanFrancisco
#b will be Weather$Chicago[n,] (n stands for 1:5), Weather$Houston[n,]

#..............quiz
M1 <- rbind(c(100,200,300,400,500),rep(10,5))
M2 <- rbind(1:5,rep(10,5))

MyAwesomeList <- list(M1,M2)

sapply(MyAwesomeList,function(a) a[1,]/a[2,])


















