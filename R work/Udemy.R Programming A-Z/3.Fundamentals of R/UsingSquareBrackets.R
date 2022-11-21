#use cmd + up arrow to move to the top of the page
#use cmd + down to move to the bottom of the page.

x <- c(1,123,534,13,4) #combine function
y <- seq(201,250,11) #sequence
z <- rep("Hi !", 3)
x
y
z


#How to access individual element of a vector
#let's say you have vector, w
w <- c("a", "b", "c", "d", "e")
w
#how can you get access to letter b or letter a within this vector w?
#You use square bracket []
#syntax - name of the vector[indexation], index of 2 means you are looking for a 2nd element in that vector
w[1]
w[4]
#Note: Indexation in R starts from 1 
#which means in order to access the first element, you need to type 1
#this is unlike other programming languages where indexation starts from zero.

#square bracket is also versatile, how?
#suppose you want to access 'all the letter except the first one'
w[-1]  #-1 means except first element of vector
w[-3]
v <- w[-3]

#use square brackets to access a range of elements
w[1:3]  #1:3 means first element till 3rd element
#here you are passing a vector (1:3) or 1 2 3 and it is used to tell 'vector w' as to which elements are required to be returned.
w[3:5]
#so this means you can pass on a vector to the square bracket
#let's actually create a vector and pass it on to square bracket
w[c(1,3,5)]#instead of using colon operator, we are using combine operator c().
w[c(-2,-4)]#you want all vector elements except 2nd and 4th.
#can you use colon operator with negative numbers... yes
w[-3:-5]#remember colon gives you range. -3,-4,-5 are consecutive numbers.
w[1:2]

#1. we learned how to access individual element of a vector using square bracket
#it is useful skill when you are working with data frames
#But often you won't need to access individual element

w[1:7]
w[-7]
w[0]

#lygometery, study of measuring what you don't know
#quantifying what you don't know
#lygo = shadow, metery = measurement





















      