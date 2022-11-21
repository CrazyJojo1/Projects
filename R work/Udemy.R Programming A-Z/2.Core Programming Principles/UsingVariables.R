#how to use variables for doing arthmetic operations or calling functions

#to save the file press command+S, then specify the name and click save.

 #cleaning the variables present in global environment, press the broom icon present in environment window

#using variables for arthmetic

A <- 10
#You have created variable A that is a double type and contains 10 as its value
B <- 5
C <- A + B
#spaces in R don't matter, so A + B or A+B will make no difference

#how to print value of C (calculated using arthmetic sum), just type name of variable and voila. Run and see

C

#variable 1
var1 <- 2.5
#variable 2
var2 <- 4

#calculate the result of their division
result <- var1 / var2

#print result in console
result

#how to call functions and pass values to those functions
#let's say you want to figure out the square root, use sqrt to find square root. 

ans <- sqrt(var2)
#sqrt is a function and you are passing a value of var2 in function to calculate its square root

#What you learn here - functions can be use in many different ways. Here we are using them as arguments

#print ans in console
ans

#how to work with characters
greeting <- "Hello"
name<- "Bob"

#We want to create a message that says "hello Bob".
#function for adding two strings together is called 'paste".
message <- paste(greeting, name)
message

