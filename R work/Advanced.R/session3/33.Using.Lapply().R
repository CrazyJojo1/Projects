#Using L-Apply()
?lapply
Weather
lapply(Weather,mean)
lapply(output,mean)
class(lapply(output,mean))
lapply(X,FUN,..)
#X can be a list, a vector, a matrix 
#FUN is the function that you want to apply on the list

#Result of an lapply()
#it returns "a list" of the same length as your object (object can be non-list, but result is a list)
output
class(output) #it is a numeric vector
lapply(output,mean)
class(lapply(output,mean)) #it is a list
#the output of lapply() function is always a list.
#each element of that list obtained using lapply() is the result of applying that function 
#.......................
Chicago
class(Chicago) #matrix
#convert rows into columns
#how?
#use transpose function
t(Chicago)
t(Weather$Chicago)

#now you have a list
Weather
#But now you want to transpose all the list elements and want to put them 
#into an another list
lapply(Weather,t)
#now it was that simple
#you use lapply() to transpose all the list elements and put them in a list again
#................what is lapply() doing?
lapply(Weather,t)
#lapply is going inside your list
#will pick out every list object and apply function on that object
t(Weather[[1]])
t(Weather$Houston)
t(Weather$NewYork)
t(Weather[[4]])
#and lastly..... it is putting all four results into a List
list(t(Weather[[1]]),
     t(Weather$Houston),
     t(Weather$NewYork),
     t(Weather[[4]]))
#this is same result as 
lapply(Weather,t) #good part is it also adds names to the listed components
names(lapply(Weather,t))

#now let's create an object that stores the result
mynewlist <- lapply(Weather,t)


#.............do it using loops
summary(Weather)
#so we have four list components
#you can also check from Global environment
#so for loops, i=1:4
Weather$Chicago
t(Weather[[1]])
transposed <- list()
for(i in 1:4){
 transposed[[i]] <- t(Weather[[i]]) #you want to transpose the object present in each list component
}
transposed
names(transposed) <- names(Weather)
#........................

#example2

#add another row to Chicago matrix
Chicago
Chicago$NewRow #But that will change our existing matrix
#using rbind()
rbind(Chicago,NewRow=1:12)

#Challenge: do this operation on every single city
lapply(Weather, rbind, NewRow=1:12)
#lapply is applying rbind function of the list objects 
#But this time we also want to pass the second argument that we want to pass to the function(rbind)

#syntax of lapply
lapply(X, FUN, optional_parameter)
#optional_parameter in our exercise is NewRow=1:12
#................................

#Example3
?rowMeans
rowSums
#used for calculating row means for numeric array
rowMeans(Chicago) #gives you the same result as
apply(Chicago,1, mean)
#rowMeans apply mean() to all the rows

#using lapply to form a list that contains means for each city
lapply(Weather, rowMeans)
#this gives you the list with names of list components
#and 
#it gives you objects(numeric vectors) with column names
#so you have a named vector 












