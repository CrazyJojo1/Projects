
#Important topic

#let's create a vector and put five values in it.
x <- c("a","b","c","d","e")
x 
#use indexation to extract letter a and letter e
x[c(1,5)]
#use indexation to extract just first letter
x[1]

#What are we doing here?
#We are creating vectors from already existing vector and that vector is x
#x[c(1,5)] is a vector itself that contains two vector elements and,
# is derived from vector x
#x[1] is a vector too and contains one vector element and is also derived from vector x

#This is called subsetting vector x
#x[c(1,5)] and x[1] are derived from vector x.

#But can we subset a matrix?

#type a matrix
Games

#let's say we want to look at a subset of this matrix
Games["KobeBryant","2009"]
Games[c(1,3,4,5,6),c("2005","2009","2010","2013")]
Games[1:3,6:10] 
#Games[1:3,6:10] is a subset of a matrix Games and it is also a matrix 3x5

#let's compare top paid and lowest paid on our list over all 10 years
Games[c(1,10),1:10]
#This also result a 2x10 matrix and is subset of original matrix Games

#you can do above operation by
Games[c(1,10),]
#You are selecting entire 1st and 10th row
#[1,] is to select entire 1st row
#[c(1,10),] is to select entire 1st and 10th row.

#[,1] will select entire 1st column.

Games[,c("2008","2009")] #This allows you to select 2 columns
#or you can type
Games[,c(4,5)]

#Is subset of a matrix always a matrix??

#No, it single row or a column gives you a vector
Games[1,]
Games[,1]

#function to check if a subset is a matrix
is.matrix(Games[1,])
#False
is.matrix(Games[,1])

#function to check if it is a vector
is.vector(Games[1,])
#yes
Games["KobeBryant","2009"]
is.matrix(Games["KobeBryant","2009"])
#not a matrix

#Why all subsets of matrix is not a matrix??

#matrix is two-dimensional object and vector is one-dimensional object
Games[1,]
#The result of above operation is one-dimensional to R and therefore, it is not a matrix.
#if you see the result,
#it looks like a named vector



#Can we fix this??
#Yes
#use another parameter inside the square bracket
#This parameter is called drop.
#syntax: [row,column,drop]
#let's try
Games[1,,drop]
?drop
#drop parameter deletes the dimension of array that contains only one level
#which means
#if matrix has just one dimension,
#then drop will delete its second dimension to make it a vector

#so when you say
Games[1,]
#this is one line
#by default, drop = TRUE. You don't need to type it. R assumes it itself

#if you put, drop = FALSE. then matrix, even if it contains just one line array, will remain a two-dimensional object
Games[1,,drop = FALSE]
#Now you have player name
is.matrix(Games[1,,drop = FALSE])
#voila, it is a matrix!
Games["KobeBryant","2009",drop=F]
is.matrix(Games["KobeBryant","2009",drop=F])

#so drop argument gives you same class of an element as you had originally.





