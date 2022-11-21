?list
#advantage of a list?

#you can store more than one data type in it.
#that's the difference between vector and lists

#In R function can only return one object
#so if you want a function to return more than one object,
#then you gonna have to package it into a list

#you still get a single object, a list object
#from this list object...you can access other objects that is placed within  that list

#..............how to create a list
#use list()
?list
list(1,"a",TRUE)

#In vector
# a single vector element is also a vector and is of length =1
#So, list(1,"a",TRUE) = list(c(1),c("a"),c(TRUE))
#each vector element is a vector in itself.
list(c(1,2,3),c("a"),c(TRUE))
#now c(1,2,3) is a vector of length 3
#c("a")  is a vector of length 1.
#c(TRUE) is also vector of length 1.

#.............conclusion
#lists can have different data types
#each data type can be of different length
#in previous example:
#list(c(1,2,3),c("a"),c(TRUE))
#numeric vector of length 3, and character and logical vector is of length 1

#...........you can package another list into a list
list(c(1,2),"a",TRUE,list(c(1,2,3),c("a"),c(TRUE)))

#things that we learned about vector() function

vector(mode="numeric",length = 5)
vector(mode="character",length = 5)
vector(mode="logical",length = 5)
?vector

#list is essentially a vector, but with different vector properties
#we use a vector function, but here mode=list
vector(mode="list",length = 5)
#this gives us an empty list

#accessing elements within a list
x <- list(c(1,2,3),c("a"),c(TRUE))
y<- list(c(1,2,4),c("a","b"),c(T,F,F))
length(x) #three vector elements means length=3
#using square brackets to access the vector element
x[2]
#you get the second element.

#But list element are denoted by double square brackets
x[[2]]

#what is the difference between x[2] and x[[2]]
class(x[2]) #"it is a list" that contains a character vector within it.

class(x[[2]]) #it is a character

#so when want a function to return a character, you use x[[2]]

class(x[[1]])
class(x[[3]])
#shortcut
for(i in 1:3){
  print(class(x[[i]]))
}
#what if you don't have to use for loop.... 
#lapply (father of apply family)
?lapply
#this function is used over a list
#lapply(2 arguments)
#lapply(1st argument=range of objects,2nd argument=function that you will apply to each element of the list)
x <- list(c(1,2,3),c("a"),c(TRUE))
lapply(x,class)
#x is the range of objects
#class is the function 
#what is happening here?
#lapply is firstly going through the list elements and everytime
#it pulls out an element from the list, it supplies it to class function
#so in shorts
#lapply(x,class) is simple version of class(x[[1]]),class(x[[2]]),class(x[[3]])
lapply(x,typeof)

#save result in an object
saved <- lapply(x,typeof)
saved

#using as.list() function to coerce a vector into a list
z <- 1:10
z1 <- as.list(z)
z1

#...............naming the list
#you name the list just like you name a matrix or vector
xlist <- list(a = "john steven",b=1:10,data=head(iris))
xlist
#xlist contains 3 elements
#But now each element has its name
xlist$data
#you can use 
#listname$nameofelement
xlist$b
xlist[["b"]]
xlist["b"]
class(xlist[[3]])

x1 <- list(1,"a",TRUE)
names(x1)
names(x1) <- c("number","lete","logi")
x1
x1$number
