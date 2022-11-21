
#.......Data type and data structures

#..........Data type
#type of variables
#1. numeric - int and double
#2. complex 
#3. character - string (use double quotations when specifying them)
#4. logical - TRUE FALSE
#..............using these variables
x <- 4
#here you are assigning (<- operator is used) x a value of 4
typeof(x)
#typeof() is a function that tells you about the variable type
y <- 5L
typeof(y)
#in order to specify an integer type, you need to use L with the numerical
#Why??
#By default, R stores all numerals in double type
#double type is a number that contain a decimal. e.g. 4.3, 2.777, 2.000, etc

z <- 2 + 3i
typeof(z)
a <- TRUE
typeof(a)
b <- "Hello"
c <- "asshole"
d <- paste(c(b,c)) #this gives a vectors containing two vector elements
e <- paste(b,c)#this gives a single vector element.
d
typeof(d)
#this is how you specify a variable

sqrt(x)
#sqrt() is a function that is used to do square-root operation.

#.........using logical operators
x > y
x<y
f <- x > y
typeof(f)
g <- !(x > y)
#here I am using !(not operator)
h <- !F
#using OR and AND operator
#OR- one of it needs to be true
f | g
#for AND- all of logical variables needs to have TRUE value
f & g
isTRUE(g)
#if logical variables has true value or not
isTRUE(f)
is.numeric(x)
is.double(x)
is.integer(y)
is.character(e)
is.logical(a)
#you can use typeof() or add specificity to what data type you are looking for

#...............Missing data types
#R supports missing data in vectors
#missing data is shown as - NA
#Inf: infinity
#NaN : not a number (undefined number)
i <- NA
typeof(i)
is.numeric(i)
j <- c(2,3,4,5,6,NaN,NA,Inf)
mean(j) #this will not result a mean
is.numeric(j)
h <- c(2,3,4,5,6)
#.........why need to have missing data
mean(h)
min(h)
?mean()

#...............Coercion
#what is Coercion??
#this means forcibly conversion between types

#types of coercion: Implicit and Explicit
#Implicit : happens when a datatype is forced into another datatype

#let's try implicit coercion
x <- c("Hello","I","am","having","hard","time",3L)
#here R has converted 3L(int vector) into a character vector
#without telling you 
x
#that is why it is called "implicit" coercion

#Explicit : ???(need examples to understand)

#...............what is an atomic vector
#Atomic vectors
#Vectors that holds data of a single type
#for instance, in R, each vector contains elements of same data type
#if it is an int vector, then all vector elements are of int type

#matrices
#it is a atomic vector (all vector elements in matrix are of same type)
#these are 2D objects
#you can create a table format using a matrix
#2 dimensions - [row,col]

#Default R: matrices are filled column-wise 
x <- 1:10
y <- 3:12
?matrix()
matrix(x,y)
#matrix() bends one single vector into a 2d object
matrix(x,nrow=2,ncol=8)
#here vector elements of x are arranged col-wise
#1,2 in first col; 3,4 in second col; 4,5 in third; etc.

#arranging it row-wise
y <- matrix(x,nrow=2,ncol=5,byrow=T)
#byrow parameter allows you to change R default's action

#using subsetting to reach a specific cell of a matrix
y[2,4]
z <- y[2,]#select entire row
y[,4]#select entire column
is.matrix(z)
#converting a matrix subset into a matrix
z <- y[2,,drop=F]
#using drop=FALSE parameter will prevent R from deleting the dimension.
?drop
#2nd wat to create a matrix is using rbind()
a <- 1:10
b <- rep(5,10)
?rbind()
c <- rbind(a,b)
#this combines two vectors row wise.
?transpose()
?t()
t(c)
#transpose of a matrix allows you to convert row-wise arrangement 
#into column-wise arrangement
#t() function comes handy when you use matplot()
#matplot() plots column by column
d <- 2:11
e <- rbind(a,b,d)
rownames(e)
rownames(e) <- c("student1","student2","student3")
colnames(e) <- c("math1","math2","math3","math4","math5","math6","math7","math8","math9","math10")
rownames(e) <- NULL
colnames(e) <- NULL
e
f <- cbind(a,b,d) #column wise arrangement of your vectors
names(a)
names(a) <- c("a1","a2","a3","a4","a5","a6","a7","a8","a9","a10")
a


#.................lists
#lists contains mixture of data types
#it may have characters, numbers, logicals, and matrices
#lists uses double square bracket for indexation

#all variables in a data frame needs to of same length
#............
#difference between matrix and data frame
#Both are two-dimensional object. However, matrix is homogeneous (conains same data type throughout) and
#data frame is heterogeneous (may contain mix data type)

#difference between vector and list
#vector is homogeneous and list is heterogeneous.

#.............tibbles
#tibble is a tidyverse package that is used to improve existing
#data frame
#it complains more that allows you to correct mistakes from the get-go
#This way hidden problems ,that may have driven you crazy later on when running the code, doesnot exist.

#this results in more tidy data frame
#they come with enhanced print() function

#.................readr package
#allows you to import .csv file

#..............readxl package
#allows you to import .xlx file 

#.................tibble 
#tibbles are simple version of a data frame, this means
#tibbles never change the type of the inputs
#whereas, data frame can coerce existing vector elements into different variable type.

#tibble never create row name
#tibble also never changes the column name

#pros of tibble
#you can use spaces for column name, even other special characters can be used
#to do this:
#you use backticks (``) - one that you see below tilda sign (top left corner of your keyboard)

#tibble() comes with tribble() function
#tribble stands for transpose tibble








