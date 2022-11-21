# Why square brackets aren't that important in, and
#What is the fundamental underline driving this whole programming language

#you have numeric vector of 10 elements
x <- c(50,34,111,7,24,631,20,4,7,21)

#Also, you have another numeric vector of 10 element as well.
y <- c(100,2,56,12,0,65,93,10,244,1)

#Your goal is to all these vectors together meaning 1st element of x with 1st element of y and so on..
#x + y
x[1:10] + y[1:10]
x+y
#result of x[1:10]+y[1:10] is the same as x+y
#you really don't need to use square brackets 
z <- x + y

#Unlike other programming languages, you will carry above operations using loops
for (i in 1:10){
  z1 <- c(x+y)
  }
z1
#unlike above for loop, you would do it using arrays 
#This approach used in other languages is called de-vectorized approach.

#In R you don't need to do any of that, even for loop is not required
#why?
#R is vectorized programming language
#everything is in vectors.

z2 <- x - y
z2
z3 <- x * y
z3
z4 <- x / y
z4

#you can also perform boolean operation
z5 <- x > y
z5
#R is doing logical operation element by element
#FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE TRUE

#Let's try adding smaller vector to a larger vector
a <- c(50,34,111,7,24)
b <- c(100,2,56,12,0,65,93,10,244,1)
c <- a + b
c
#something is wrong!!

#What is R doing above?
#it is doing Recycling of vectors
#e.g. by the end of addition of all elements of smaller vector... it will start again from the beginning of smaller vector to continue rest of the addition

#condition for recycling : bigger vector should be multiple of smaller vector
#meaning, if smaller vector is of length 5, then bigger vector should be multiple of 5 e.g. 10.

#What if bigger vector is not a multiple of smaller vector
#Recycling will still occur, but R will give you a warning
#Warning message:
#In a + b : longer object length is not a multiple of shorter object length
a <- c(50,34,111,7,24)
b <- c(100,2,56,12,0,65,93,10,244,1,10,11)
c <- a + b
c
#using square brackets to avoid recycling
d <- a[1:5] + b[1:12] #recycling still occurs
d
#So square bracket is not a solution. 
#Note: add vectors of same length or recycling will happen by default. 
#R will give you warning message just for you to know what is happening.

#What is an argument?
#These are inputs that you give to a function

#Vectors and Functions
#you can use vectors in functions
#vectors can be argument of a function
e <- c(2,3,4,5,6) #c() is a combined functions that is using vectors 2, vector3 and so on.
e[c(1:3)] #c() is used to give indexation inside a square bracket

#to give vector as argument inside function, you use ()
#syntax- f(      )

#vector can be returned from function
e <- c(2,3,4,5,6) #function, c() is used to create vector
e

#In other coding languages, you put quiet a lot of effort to result an array from a function
#Ultimately, array is same as vector

#R makes it easier to get array from a function
#In R, even a single number or single character is a vector












