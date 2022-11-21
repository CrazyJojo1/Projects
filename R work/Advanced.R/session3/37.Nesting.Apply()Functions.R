#Nesting apply() family functions

#This is going to be similar to nesting our own function within the lapply function
lapply(Weather, function(a) round((a[1,]-a[2,])/a[2,],2))

#But this can get little bit interesting as one apply family funciton will be using another apply function 

#...........................
Weather

#get row means for each one of the matrices
sapply(Weather, rowMeans)
?rowMeans
#If you look at the help window of rowMeans
#What you see?
#you don't find any predefined function for rowMins and rowMax.

#How can we create our own...rowMax and rowMins??
Chicago
#calculate the annual max for Chicago
max(Chicago[1,])
x <- 0
for(i in 1:nrow(Chicago)){
  x[i] <- max(Chicago[i,])
}
x
#...........................
max(Weather[[1]][1,])
max(Weather[[1]][2,])
max(Weather[[1]][3,])
max(Weather[[1]][4,])
max(Weather[[1]][5,])
max(Weather[[2]][1,])
max(Weather[[2]][2,])
max(Weather[[2]][3,])

y <- list(0,0,0,0)
for(i in 1:4){
  for(j in 1:5 ){
  
    y[[i]][j] <- max(Weather[[i]][j,])
  
}
}
y

lapply(Weather,max)
?apply
apply(Weather,1,max)
lapply(Weather, apply, )
?max
#............................
apply(Chicago,1,min)
#it does gives us the row max for a matrix

#Problem?
#you can't use the apply function for a list
#sol
#why not nest apply() in lapply()
lapply(Weather, apply(Chicago,1,max))
#problem in above code????\
#lapply while iterating through the Weather list will change list objects
#So it is not always be Chicago
#first it will be chicago
#then houston and then Newyork and so on...
#So how to do??
lapply(Weather, apply(,1,max)) # the object element of the list will 
#be decided by lapply().So, better leave that . 
#Now work on lapply syntax
#But 1,max will be additional parameters
lapply(Weather, apply,1,max)
#What is happening here?
apply(Weather[[1]],1,max)
apply(Weather[[2]],1,max)
apply(Weather[[3]],1,max)
apply(Weather[[4]],1,max)
#then
list(Chicago = apply(Weather[[1]],1,max),
     Houston = apply(Weather[[2]],1,max),
     NewYork = apply(Weather[[3]],1,max),
     SanFranciso = apply(Weather[[4]],1,max))
#...........................
#2nd way
lapply(Weather, function(a) apply(a,1,max)) 
#a will be list object that will change as per the iterations of lapply

#But the 1st approach is preferred
#..............................................Project(3rd and 4th part)
#Now let's get the matrix
sapply(Weather, apply, 1, max)
#This gives us our 3rd deliverable......

sapply(Weather, apply, 1, min)
#This gives us our 4th deliverable 





















