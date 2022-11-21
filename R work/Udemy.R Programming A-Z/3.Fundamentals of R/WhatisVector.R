#Fundamentals of R
#designed for people using Linear algebra.
#that's why it has that vectorized approach to it.


#What is Vector?
#It is a sequence of data element of the same basic type
#vector types
#-Numeric vector, all data elements are numbers
#-Character vector, all data elements are characters, means they are in double quotation marks
#-Logical vector, all data elements are either TRUE or FALSE.
  
#Difference in R w.r.t. other programming language
#R has vectors, C/C++ has array.
#An array is a vector but you don't use arrays or a[] in R.
#A vector indexation always starts with 1.
#Whereas an array's indexation always starts with 0.

#6 is a vector of length(1)
#length of a vector tells how many data elements are present in a vector


#Create some vectors
#How to put numbers in a vector
#c() is a function used to add numbers in a vector. It is called combine function
MyFirstVector <- c(3, 45, 56, 732)
MyFirstVector


#num[1:4] means it has 4 elements

#check if a variable is numeric
#is.Numeric() is a function used to check if a vector or a number is numeric or not
is.numeric(MyFirstVector)
#TRUE in console says MyFirstVector is a numeric indeed.

#check if a variable is integer
#is.integer() is a function used to do that
is.integer(MyFirstVector)
#FALSE as R stores all numbers by default in double type (means it contains decimal point).
#you need to specify to R if it is an integer
#convert your variable into integer

MyFirstintegerVector <- c(3L, 45L, 56L, 732L)
is.integer(MyFirstintegerVector)
#TRUE, so add 'L' to your number to make it integer.

is.double(MyFirstVector)

V2 <- c(3L, 12L, 243L, 0L)
is.integer(V2)
is.numeric(V2)
#a numeric vector is a vector containing numbers that number can be double or integer.
is.double(V2)

#Create a character vector
V3 <- c("a", "823","Hello")
#char[1:3] means it is a character vector of length 3
V3
is.character(V3)
is.numeric(V3)

#A vector is a sequence of data of 'same basic type'
#Let's check, what happens if you add number to a character vector.
V3 <- c("a", "823","Hello", 7)
V3 #when you print V3 in console 7 is written as "7", which is character form.

#Note - It is easy to convert number to a character, but 'not' vice-versa.
#IMPORTANT- when you add a character in a numeric vector, it gets converted into character vector.

V2 <- c(3L, 12L, 243L, 0L,"hello")
V2
#V2 has not added 'hello' as its number. 


#Other ways to create a vector

#seq(), it is a sequence function which works like a colon ':'
seq(V2) #represents indexation of your vector, e.g. 1 2 3 4. 

#rep(), it is a replicate function
rep()

#Using sequence function
#let's say you want to create a sequence of numbers from 1 to 15
seq(1,15)
#1 is start of the sequence, 15 is end of sequence.
#seq(start, end)
1:15
#so 1:15 and seq(1:15) is the same
#why use seq()??
#because seq() gives you additional flexibility
#seq(start, end, step), step is an additional parameter
seq(1,15,2)
#step is the jump.
#so seq(1,15,2), gives you all the odd numbers
#this is something you cannot do when you use 1:15
z <- seq(1,15,4)
z
#with seq(), you always get number between (start:end) even if steps are big.

rep(3, 50)
#rep(number you want to replicate, how many times you want to replicate)
y<- rep(3, 50) #it creates a vector of length 50.

#you can replicate a character
rep("a", 5)

#you can also replicate a vector
x <- c(80,20)
a <- rep(x, 10)
a  #you have created a vector of 20 elements.















