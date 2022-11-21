#named vectors
charlie <- c(1:5)
charlie <- 1:5
charlie

#give names
?names()

#syntax : names(object that you want to check names of) 
#this way you get to know the names of the elements present in the object.
names(charlie)
#NULL means elements don't have names
#Null in R means nothing - means its not even empty, names doesn't exist

#Create names of elements present in vector Charlie
#Note: What you will see know doesn't happen often in programming.
#meaning this is unique to R

#firstly names() is used to get a value 
#in our case, we got NULL
names(charlie)
#But we can also use names() function to assign it a value
names(charlie) <- c("a","b","c","d","e")#we are assigning a vector ("a","b","c","d","e") to a function names(). 
#How is R allowing you to assign a vector to a function names()??
#R is considering names(Charlie) as an Object
#a thing to remember :- R treats Not all, but only specific functions as objects.

#When you are looking at names(charlie), you are looking at the characteristics of the vector charlie
#Characteristics of vector charlie is the names of its vector elements.
#So you can consider names(charlie) as an another vector that tells about what charlie is,
#then it will make more sense.

#now run the names()
names(charlie)
charlie
#now charlie is a named vector

#Suppose you want to access 4th element 
charlie["d"]
#names are characters, so always use double quotation marks
#also charlie["d"] is returning you a vector of length 1 and that vector name is d
#Same concept - everything in R is a vector.

#.......
#How to clear names
names(charlie) <- NULL
#check element names
charlie
names(charlie)  #NULL it is ..... means no names exist

#...........
#naming matrix dimensions


#You create a vector
a <- c("a","B","zZ")
#create a temporary vector
temp.vec <- rep(a, 3)
#this is similar to writing 
temp.vec <- rep(a, times = 3)
#But you can use anther parameter in rep()- its called each
#each will replicate each element. It will replicate first element first and then move to the next element and so on....
temp.vec <- rep(a, each = 3)
temp.vec
#this way each parameter of rep() can be used for creating matrix using matrix()
#for instance, you can use rep() and use matrix() to have three columns each containing different vector element
matrix(data = temp.vec, nrow = 3,ncol = 3,byrow = FALSE)
?matrix()
#Use FALSE instead of using F as R will give you different result.
#or for byrow = false, don't use byrow

#name the matrix
bravo <- matrix(data = temp.vec, nrow = 3,ncol = 3,byrow = FALSE)
bravo

#bravo is a matrix, but its rows and columns has no names
#let's name those rows and columns

#Instead of using names() function, we will use something else.
#rownames()
?rownames()
rownames(bravo)
#Null means no names exist

#using the concept we learned earlier
#using rownames(bravo) as an Object and assigning a vector to his Object
rownames(bravo) <- c("How","are","you?")
rownames(bravo) #names are assigned
bravo #you can see - each row is assigned a name


#What about column names
#colnames()
?colnames()
colnames(bravo)
#assign some values
colnames(bravo) <- c("X","Y","Z")
bravo
#now matrix bravo has row names and col names

#.....
#suppose you want to put zero in the matrix that you have created
#let's put a zero in the middle of the matrix
bravo[2,2] <- 0
bravo #now if you check your matrix, its middle element is zero

#........
#getting rid of rownames and colnames
rownames(bravo) <- NULL
colnames(bravo) <- NULL

#check whether names are present
bravo
#no names exist.
bravo[2,2]
#you see bravo[2,2] is a vector itself that contains a single element
#assigning this vector an another value
bravo[2,2] <- "F" 
bravo
bravo[2,2] <- "L"