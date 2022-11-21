
#Extracting components of a list
#three ways
#1. using [] (single square brackets)
#2. using [[]] (double square brackets) - 
# this returns the object contained in that list
#3. using $ - this is same as [[]], but much more convenient
#this returns the object contained in that list

#let's try all three methods
list_rl1
#1st way
list_rl1[1]
list_rl1[2]
list_rl1[c(1,3)]
list_rl1[-3]
#2nd way
list_rl1[[1]]
list_rl1[[c(2,3)]] #this gives 3rd object element of the 2nd list component
#syntax :
#list.name[[c(list element object ,object element contained within that object)]]
list_rl1[[c(1,3)]]
#there isn't any third element of the object contained within 1st list object

#3rd way
list_rl1$Machine
list_rl1$Stats
#this contains three vector elements 
#[1] 0.8492262 
#[2]0.9516976
#[3] 0.9950000

#R may show you :
#[1] 0.8492262 0.9516976 0.9950000 
#this is because all three vector elements can fit in same line
#if three be 9 or 10 vector elements that cannot fit in the same line, 
#then R will add indexation at the "start"of each line

#check if you got a list or a object contained in that list
class(list_rl1$Stats) #you got object contained in that list
typeof(list_rl1[["Stats"]])
typeof(list_rl1[[2]])
class(list_rl1["Machine"]) #this gives you a list
class(list_rl1[1])
#so [] gives you a list component
#and [[]] or $ gives you object contained within that list
typeof(list_rl1[[1]])
#you get a character
#what does it mean??
#it means that you have extracted an object present in that list.
#this also means that if you want to create an object and save it... you can 
x <- list_rl1[[1]]
x
# x is a character vector of length 1. which means x is a value.
#But
list_rl1[1]
class(list_rl1[1])
#This is a subset of a list - subset of a list is also a list.
y <- list_rl1[1]
y
#y  is a list.... it is not a value..
list_rl1$Machine
z <- list_rl1$Stats
#z is a value (not a list) and z is of length 3.

#challenge
#how would you access the 3rd element of the vector
list_rl1$Stats
#try accessing its 3rd element
list_rl1$Stats[3]
#since list_rl$Stats is a vector
z[3]
#you can also do it through a list
list_rl1[[c(2,3)]]
#now I am using double quotation, so [[c(2,3)]] means 2nd object and its 3rd element
list_rl1[[2]][3]
#[[2]][3] means 2nd object and 3rd element of this object
list_rl1$Stats[3]

