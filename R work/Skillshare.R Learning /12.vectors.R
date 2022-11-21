
#................. vector() function
#simplest way to create a vector is using vector() function
x <- vector()
class(x)
#This gives you a empty logical vector of length 1.

#To open documentation panel, you use ?(function name)
?vector
#mode means data type
x <- vector(mode="integer",length=10)
#this creates an empty vector of length 10
class(x)
#this is integer type
y <- as.vector(x,mode="double")
class(as.vector(x,mode="character"))
#as.vector() is used to do explicit coercion, 
#you are changing the data type
is.vector(y, mode="character")
#is.vector() is used to ask if the given vector is of a specific mode or not.

#.....................
?character
a <- character(length=10)
b <- vector(mode="character",length=10)
#both gives you same results
a == b








