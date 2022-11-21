#The Role of Global Environment
#if you have created a variable in your script "program1.R" and that variable is
#present in global environment, then 
#you can use that variable in another script.

#function created in some other script can be used in other scripts

#..............
#matrices
#2-D vectors 
#used to generate plots 
#it has rows and columns
#indexation of a matrix is : matrix name[row, column]
#create a vector
a <- 1:10
A <- matrix(a,2,5)
A
A[1,2]
a[2]
#indexation of a vector : vector name[position of vector element in a row]

#The indexation of a matrix is a subset of a matrix. And if you drop= False parameter,
#the matrix resulting from indexation is also a matrix

A[1,] #select entire 1st row
#This is not a matrix because by default, R assume drop = TRUE
#function to check if it is a matric or not
is.matrix(A[1,])
is.vector(A[1,])
#What is happening here?
?drop
#means when R sees a single array, it drops off additional dimension
#A[1,] is contains single array of elements
A[1,,drop=F]
#now it is a matrix
is.matrix(A[1,,drop=F])
is.vector(A[1,,drop=F])
#.........................
#subset of a vector is a vector and subset of a matrix is usually a matrix (is you use drop=F parameter)
#Changing an element of a matrix
A[2,2] <- 5
A
#What is happening here?
#you are using A[2,2] as an object and you are giving it a value.
is.matrix(A[2,2])
#So R is treating A[2,2] as a vector 
#it is similar to:-
b <- 5
#..............
#rows and columns name
#adding names to rows you use rownames(mame of the matrix) function
#adding column names you use colnames(matrix name) function
#names are always characters, best to use double quotations 
A
rownames(A) <- c("A1","A2") 
colnames(A) <- c("B1","B2","B3","B4","B5")

#what are you doing here
#you are using rownames(A) as an object and you are feeding it a vector array
#same for colnames(A)

#But you can also use rownames() and colnames() to call these vector elements
#e.g. if you wish to check what names you have provided for rows and columns
rownames(A)
colnames(A)
A
#you have A as a named matrix

#you can do the sames for a vector
#use names()
names(a) <- c("a1","a2","a3","a4","a5","a6","a7","a8","a9","a10")
names(a)
a
#you have your named matrix
#how to delete these rownames,colnames and names
rownames(A) <- NULL

rownames(A)
A
names(a) <- NULL
a
#.................
#creating matrices
#1. using matrix(vector, nrow,ncol,byrow=T)
A
matrix(a,2,5,byrow = TRUE)
matrix(a,2,5,byrow=F)
#byrow is a parameter to arrange the vector elements row wise, instead of column wise
#by default, matrix() arranges vector elements col wise
#2. rbind
#you would need 2 vectors for this
#both vectors must be of same type and of same length
 b <- c(2,4,6,8,9,12,14) #this contains 7 elements
 c <- c(1,3,5,7,11,13,15)
#both are numeric vectors of same length
 rbind(b,c) #row*col=49, so use 7x7
 ?rbind()
#row bind functions will not need row and col specifications
 #its goal is to have vectors arrange row-wise. 
 #first vectors in first row and 2nd vector in 2nd row
 cbind(b,c)
#it arranges the vectors column-wise. First vector in 1st column and second vector in 2nd column
 
 #rep() and seq()
 rep(b,times=3)
 rep(c,each=3)
 ?seq()
 seq(from=202,to=220,by=3)
 #by means jump and is equal to (to-from)/(7-1) =18/6 = 3
 seq(from=202,to=220,length.out=3)
 #this way you can generate a sequence of a required length
 #you can use rep() and seq() to generate long vectors
 
 #rnorm(n=,mean=,sd=) 
 #most values fall between mean+sd and mean-sd
 #..................
 #matrix operation
 #you can multiply,divide, add ,and subtract two matrices.
 #and that too without the need of loops
 #you can do sqrt(matrix name) to get square-root for all matrix elements
 A
 sqrt(A)
 
 #round(vector name/matrix name, no. of decimal point needed)
 ?round()
 round(sqrt(A),1)
 mean()#you must have array of vector elements to use this function
 #mean is sum of all vector elements/ number of elements in that vector
 max()#finds the max value
 min()#finds the min value
#! #means not
 #...............
 #matplot()
 #not the best function to use as it requires too many parameters and requires a separate function to add legends
 #for legends you use legends functions
 #syntax for matplot(matrix,type="b",pch=15:18,col=(1:4,6))
 #type is to know what sort of plot you want
 #line, histogram, point, steps etc
 #pch = 15:18 means it is a vector containing 4 elements 15 16 17 18
 #pch has something to do with the representation of a point
 #4 vector elements means point have 4 different shapes
 #col=(1:4,6) has 5 vector elements
 #you are using 5 different colors for your legends
 
 #syntax for legends 
 #legend("bottomleft",inset=0.01,pch=same as matplot,col=same as matplot, legend= col_names,horiz=F)
 #horiz=F means you want legends arranged in one column
 #legends are col_names, as matplot() plots vectors col by col
 #firstly, first column of your matrix is plotted and then the second and so on...
 
 #..........
 #transpose()
 # t(matrix name)
 
 #...........
 #subsetting allows you to analyse a specific players from a matrix
 #make to use drop=F in subsetting square brackets
 
 #create your function
 #makes your work easier
 
 #deriving insights
 #thoughtfully reading datasets using matplot(), legend()




