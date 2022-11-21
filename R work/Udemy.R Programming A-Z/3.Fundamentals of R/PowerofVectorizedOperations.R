#An Experiment
#Find out why you should use vectorized operations in R over de-vectorized operations

#this lecture contains two parts:
#section1: explain something about loops that might cause some confusion
#section: experiment


#Create vector and put five random number in to it.
x <- rnorm(5)
x
#how to print out each of the elements of vector x on its own.
x[1]
x[1:5]
x
#But that is just one element 
#let's use loop
#R-specific programming loop
for(i in x){
  print(i)  #print is a function, so you use () and you put argument in that ().
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])
#This is exactly what ForLoop is doing. 
#i is iterating over the actual element of x.
#for iterative process, where you have to type one function e.g. print() 5 times in a row
#it is best to use Loops 

print(x[j]) #j is an index
#what if j can change from 1 to 5

#Conventional programming loop (similar to de-vectorized operation)
for(j in 1:5){
  print(x[j])#you are accessing the elements of x using [].
}
#now you are getting the same result, but in this case you are using square brackets to give indexation.

#Whereas below:
for(i in x){
  print(i)  #print is a function, so you use () and you put argument in that ().
}
#What are we doing here?
#We are iterating over the vector itself. e.g. 'i in x' means i to take the value of x for each iteration
#you can only do that in R
#why?
#x is a vector. so 'i in x' is a shortcut in R

#............................2nd part

#compare vectorized operation vs de-vectorized
#In R, you are add vectors together simply by x + y.
#why? R is a vectorized programming. Everything in R is a vector.

#here we will see what is the difference between doing it 'R'-ways and doing it conventional programming language way

#You have parameter N
N <- 100
#populate vector with N random normally distributed elements
a <- rnorm(N)
a
#have vector with same N random normally distributed numbers
b <- rnorm(N)
b

#Vectorized approach

#create a vector c which is equal to a times b
c <- a * b
c 
#done. This is one line code

#de-vectorized operation
#you will use [] to give indexation
for(i in N){
  c[i] <- a[i] * b[i]
  print(c)
}
#create vector d
d <- rep(NA,N)#create an empty vector, use rep() to do that
#rep(NA,N) is an empty vector with memory to store N variables
#Since N=100, this creates 100 empty vectors or 100 empty spaces that we will fill up 
for(i in 1:N){
  d[i] <- a[i] * b[i]
  print(d)
}


#What is the difference between vectorized vs de-vectorized operation
#vectorized operation is simple. Just one line and you performed your task
#de-vectorized approach requires a loop. It is long and requires extra space
#most important
#vectorized approach is faster than de-vectorized approach

#proof
N <- 10000000
a <- rnorm(N)
b <- rnorm(N)
c <- a * b
#.............
d <- rep(NA,N)
for(i in 1:N){
  d[i] <- a[i] * b[i]
  
}
#even though result obtained by vectorized and de-vectorized operations is the same
#de-vectorized operation takes longer time when N is big number.
#N=100, same time
#N=10000000000, de-vectorized takes longer time 

#Note:
#de-vectorized operation can run faster in other low level languages like C, Julia etc.
#But for R, de-vectorized approach is slower.

#What wrong with R then?
#R is a high level programming language
#vectorized operations, functions and calls... R is delegating those things 
#delegating whom?
#to low-level languages like C and FORTRAN in the background
#since it is happening in the background... you cannot see it.
#it may look like R is doing all the calculation
#But in actual, for everything you are running, R is calling C or FORTRAN to perform the calculations

#so when you type "d[i] <- a[i] * b[i]"
#R needs to tell e.g. C what is the variable type.
#d is a double type, a is a double type, b is a double type and so on..
#after telling variable type, you need to multiply them and assign those values to vector d

#for N=100, R needs to tell the variable type and multiplication 100 times.
#This is what makes de-vectorized operation slow

#Talking about vectorized operations
#c <- a * b
#R by default knows all numeric vectors are of double type
#also in R, vector by definition is sequence of data of same base type.
#so if one element of a is double type, then rest of the elements are also double.
#so this make things easy for R
#This saves time
#This R understands it quickly and then it delegates the the calculation part to low-level languages
#this speeds up the process.



