#Fundamental of R programming
#What is a vector?
#Sequence of data of the same base type
#to add elements to a vector, use c(), combine function.
x <- c(2,4,6,7,9) #will create a numeric vector of length 5.
#vector can be called based on their indexation.
#use [] for that
x[1] #will print 1st element of x
#use colon in square bracket to call more than 1 element
x[1:3] #colon will list consecutive elements of a vector
#use vector in square bracket to call non-consecutive elements
x[c(2,4,5)] #vector c(2,4,5) is used to call 2nd, 4th and 5th element
#vector needs to be of same base type
#if you add a character in a numeric vector, it will become a char vector
x <- c(2,4,6,7,9,"hello")
#now x is a character vector
#however, you can convert numeric to a character easily
y <- c("hell", "o", "8", "909") #putting a number in double quotations will make it a character.
#last thing
#R will store every variable as a vector
#2 is a numeric vector,"h" is a  character vector and TRUE is a logical vector

#.................

#creating vector
#use c()
a <- c("h", "o")
#check vector type
is.numeric(a)
is.character(a)
is.integer(x)
is.double(y)

#seq()
#used to create a sequence of data
seq(from=10,to=20,by=2) #will create length.out=5
seq(from=10,to=50,length.out=10)#will have 10 elements in its output
#by = (from-to)/(length.out-1) = 40/9 = 4.44
seq(from=10,to=50,along.with=x)#x is a vector of length 6.

#rep()
?rep()
#used to create replicate elements of a vectors
#repeat same element
rep(3,5) #will repeat the vector 3 five times
z <- seq(from=10,to=50,along.with=x)
rep(z,2) #this will repeat vector z two times
rep(z,each=2)#repeat one element at a time before moving for the second element
#z[1] is repeated 2 times and then z[2] is repeated 2 times and so on...
rep(z,length.out=3)
#you can use rep() to create an empty vector of desired length
c <- rep(NA,length.out=100)
c #NA means no element is present

#............
#using negative indexation in square bracket
z[-3:-5]#means exclude 3,4 and 5th element of vector z.

#...........
#vector is an array.
b <- c(2,3,4,5,6)
d <- c(5,6,7,8,9)
#add these vector using array. de-vectorized way
e <- rep(NA,5) #created an empty vector of length 5
for(i in 1:5){ #1:5 is an array containing 1 2 3 4 5
  e[i] <- b[i] + d[i] #adding individual element using indexation in each iteration
  print(e) #printing e for each iteration. You will see how empty vector is getting filled by each iteration
}
e

#vectorized operation
f <- b + d
f
#or
for(i in 5){
  g <- c(b + d)
  print(e)
}

#R makes your mathematical work easier. 
b/d
b*d
b>d
#you don't need a loop to divide individual element of a vector
#R does it for you.
#Vectorized operation are faster in R compared to other programming languages
#this is because it is designed to work with vectors
#Also it is a high level language
#meaning
#low-level languages are working in the back. and R is delegating its task to them
#for in de-vectorized way, R need to sort information for it to be understood by C or FORTRAN.
#This makes de-vectorized operation slow.

#..............
#Recycling of vector
#This happens when you add vectors of different lengths
#rule- bigger vector should be multiple of smaller vector.
#e.g. if smaller vector length = 5, then bigger vector length should be 10,15,20,25 and so on..
i <- c(1,2,3,4)
i
h <- rep(i,length.out=8)
h
i+h
#What if the bigger vector is not a multiple
#it is still do the recycling, but console will show a Warning message

#.................
#function  in R
#functions are like blenders the take input to deliver output.
#syntax - f(inputs)

#.........
#Packages in R
#packages contains multiple inbuilt functions that are designed to deliver specific purpose.
#some packages will help you draw graphs
#other will help you do data wrangling

#with packages, functions, data are compiled in well-defined format
#CRAN is an online server, from where you can download R packages for free
#library is a directory, where all your packages are installed
#for example, if you downloaded ggplot2. It will be stored in library
#library(), function used to activate a specific package present in your library directory



