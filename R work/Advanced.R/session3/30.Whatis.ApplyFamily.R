#Change the working directory
getwd()
setwd("/Users/rajanbawa/Documents/R work/Advanced.R")
#....................................
#What is Apply Family??
#let us create a matrix 
#I am using r bind
x <- c(27,63,42,111,12)
y <- c(1,54,34,98,21)
z <- c(44,14,54,101,2)
#all vectors are of same length and of same type
M <- rbind(x,y,z)
M
rownames(M) <- NULL
#................my matrix is created
#this matrix is of 3 rows and 5 columns
dim(M)
#........................
#Let's try apply functions
#The simplest of all - Apply()
apply(M,1,mean)
#Syntax :
#apply(object on which function is to be applied,
#        1= apply function to the rows,
#        name of the function that we want to use on the object)


#so apply() will apply 'mean' to every single row of the matrix,M
#each row will be treated as individual vector

#use the same formula to apply max function on the given matrix
a <- apply(M,1,max)
#this applies max() in each individual row of matrix,M
#Note:
#this gives you a vector
typeof(a) #this is numeric vector of "double type"
#...............applying functions to columns
b <- apply(M,2,mean)
#2 : means, do it column-wise
#apply(object,2,function name) will apply function to 
#each individual column of that object

#which means this will give you a vector equal to the length =ncol
ncol(M)
length(b)
#.............................

#you can also do what apply() does using a loop
rm(meanofrow_i)
rm(d)
M
?vector()
d <- vector(mode="numeric",length=3L)
for(i in 1:3){
 d[i] <- mean(M[i,])
  #print(meanofrow_i)
}
#print
d
#2nd way of using loops
rm(e)
e <- c()
for(i in 1:3){
  e <- c(e,mean(M[i,]))
  #print(meanofrow_i)
}
#print e
e
?c()

#But apply() makes it way to simple. less lines of code and 
apply(M,1,mean)
#................................
#apply functions is much quicker 








