
#how to extend existing vector?
#suppose you have a vector x
x <- 1:3
#you want to all vector elements to x
x <- c(x,4:6)
x
y <- 1:10
c(y)
y <- c(y,11,12,13,14,15)
y
#this is concatenation or extending existing vector

z <- c(x,y)
z
#using c(), combine function, you can merge two vectors or 
#extend existing vectors
a <- c(0,z,NA,NA)
a
mean(a)
#mean takes set of numbers and return an average of them
?mean()
mean(a,na.rm = TRUE)
#na.rm=FALSE means do not remove NA
#na.rm=TRUE means include NA in mean calculation.
mean(a) #by defult na.rm=FALSE, means mean() function will not 
#calculate any average if NA is present as data element
sum(a)
sum(a, na.rm=T)
?max()

x <- c(3,4,5,NA,7)
mean(x,na.rm=TRUE)






