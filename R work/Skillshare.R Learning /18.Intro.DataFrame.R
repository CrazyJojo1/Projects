
#Numpy /num-py/
#Python numpy package (crucial for data science work) is
#inspired by R data frame
#But in python you need to install this package to work with 
#data frames
#But in R, you don't need to install any package.

#data frame is a collection of column, each column is a variable
#this variable is a vector.
#which means variable can be of one specific data type.
head(iris)
#..................
#R has built-in data sets
#use this data sets to experiment with the code you have
#meaning, you don't need to build your own data set

#iris data set
iris
head(iris)
tail(iris)
str(iris)
summary(iris)
nrow(iris)
ncol(iris)
#each column is a vector
#so each column can contain one data type.
#numeric column will have numeric values only. and,
#character column will have character values only.

xlist <- list(a = "john steven",b=1:10,data=head(iris))
xlist
xlist$data
class(xlist$data)
#The list contains assortment of different object 
#these different objects can be of different length and type.

#data frame is a list, only difference between list and data frame 
#is that all objects in data frame are of same length

#can data frame have a missing value?
#Yes. missing value is shown by NA. 
#as NA does not change the length of a vector

#.........
#in data frame, rownames are S.No.
#But you can name the columns. column names is absolute essential

#Think of data.frame() similar to cbind()
#............
#let's see docs for iris data set
?iris
#store iris data frame in global environment
data <- iris

#factor?
#factor is a type of character string
#to build factor variable... use factor()
levels(data$Species)

#each observation = row
#each column = variable

#modern version of statistics is data science
#Data science and machine learning is more 
#practical application of statistics

#other built-in data frames
#use data() to view the list of all built-in available datasets
data()
#you get data set based on the package
#datasets worth exploring:
Seatbelts
str(Seatbelts)
str(Titanic )
str(AirPassengers) 
str(mtcars)            
str(faithful)











