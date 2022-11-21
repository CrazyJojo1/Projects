#We will talk about ways to build a matrix

#using global environment, get the matrix named salary. 
#The table format containing info on player's salary
Salary
Games #no. of games that these players played.

MinutesPlayed #no. of minutes these players played in each year
#What you discovered from here?
# DerrickRose played no game in the year 2012 because of his knee injury.

#Let's read the data and try understand it little better

Salary
#if you look at your table
#you have two character vectors (Players,seasons). 
#"2005" is a character as it is in double quotations

#We got salaries of each player in a vector. e.g.
KobeBryant_Salary

#how is the matrix constructed?
#matrix_name <- rbind(KobeBryant_Salary,JoeJohnson_Salary)
Salary <- rbind(KobeBryant_Salary, JoeJohnson_Salary, LeBronJames_Salary, CarmeloAnthony_Salary, DwightHoward_Salary, ChrisBosh_Salary, ChrisPaul_Salary, KevinDurant_Salary, DerrickRose_Salary, DwayneWade_Salary)

#rm()
#used for cleaning up the vectors
#why is it used?
#Since you have created a matrix that contains all the required vectors,
#you really don't need those vectors in Global Environment as they are present in your tables

#colnames()
#rownames()
?colnames()
#used to get the column names

#We are using functions and vectors to create a matrix

#.........................................
#1. Building a Matrix
#Use matrix() function - it takes the vector and bends it into a matrix
#Note :- It is not used that often
#
?matrix()
b <- c(2,4,6,8,9)
d <- c(1,3,5,7,10)
matrix(b,d) #it will literally bend a vector in to a matrix.
#Something wrong here
#    [,1] [,2] [,3] [,4] [,5]
#[1,]    2    4    6    8    9      #where is the vector d.

#create a long vector
b <- c("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U")
#Now use matrix()
matrix(data=b,nrow=3,ncol=7)

#So matrix() literally bends the vector b into 3 rows and 7 columns.
#matrix() populates the matrix column wise.
#meaning first it would fill column 1 and then column 2, etc..
#Unless you specify a parameter that bends a vector row wise, instead of column wise

#Reason why matrix() is not often use?
# You don't really need to bend a huge vector into a matrix.

#The most common way to form a matrix
#1. use rbind() function
#It takes vectors of same length.
#let's say you have three vectors
#then rbind() will put first vector in row 1st, second vector in row 2nd and so on.

#2. use cbind() function
#it takes vectors of same length
#it out vector column wise.
#first vector in 1st column, second vector in 2nd column and so on...

#3. import data 

#....................
#let's create our own matrix
#using matrix()
?matrix()
#syntax : matrix(data=name of the vector, nrow = no.of rows you want, ncol=no. of columns you want, byrow = )
#byrow = TRUE, if you wish to populate your matrix row wise. 
#e.g. first 10 elements of a vector in row 1 , rest 10 elements in row2, etc. 
#byrow = FALSE, you wish to do it column wise
my.data <- 1:20
my.data
matrix(data = my.data, nrow = 2, ncol = 10, byrow = T)
matrix(data = my.data, byrow = T)
#no change.... something wrong!
A <- matrix(my.data, 4, 5)
A #this by default will arrange vectors column wise
A <- matrix(my.data, 4, 5)
#print entire first row in console
A[1,]
#print entire fifth column in console
A[,5]
#if you want to get to the number 10
A[2,3]

B <- matrix(my.data, 4, 5, byrow = T)
B #this will have 4 rows and 5 colms same as before, but data will be bend row to row
B[2,5]


#............
#rbind()
?rbind()
#let's create couple of vectors
r1 <- c("I","am","Happy")
r2 <- c("what","a","day")
r3 <- c(1,2,3) # this is numeric vector
#Rule for matrix : for matrix, all vectors need to be of the same base type
#if they are not, they numbers will be converted to character matrix
C <- rbind(r1,r2,r3)
C
# r3 "1"    "2"  "3"
#R has converted num_vector into char_vector

#.......
#using cbind()
D <- cbind(r1,r2,r3)
D
KobeBryant_Salary <- c(15946875,17718750,19490625,21262500,23034375,24806250,25244493,27849149,30453805,23500000)
JoeJohnson_Salary <- c(12000000,12744189,13488377,14232567,14976754,16324500,18038573,19752645,21466718,23180790)
E <- rbind(KobeBryant_Salary,JoeJohnson_Salary)
E #this create you rows. 2 rows for 2 vectors

F <- cbind(KobeBryant_Salary,JoeJohnson_Salary)
F #2 vectors, 2 columns

G <- matrix(KobeBryant_Salary,5,2)
G #bends the vectors in 5 rows and 2 columns. But it moves column wise. 
#first 5 values in column 1 and rest in column 2
G <- matrix(KobeBryant_Salary,5,2,byrow=T)
G #this makes values move row wise.














