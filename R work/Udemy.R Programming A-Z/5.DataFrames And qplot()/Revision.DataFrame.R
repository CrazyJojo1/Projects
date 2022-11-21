
#Data frame

#1. how to import data into R
#a. if you have a text file..... then convert it into .csv file using excel
#b. use read.csv() function 
#use file.choose() within read.csv() to open a promt window to select your csv file from your computer
read.csv(file.choose())
#name this data
Revision.demo <- read.csv(file.choose())
Revision.demo

#2. use getwd() to know your current working directory
getwd()
#inorder to change the working directory
#use setwd()
setwd("/Users/rajanbawa/Downloads/R work")
getwd()
#choose a file within that directory
diamonds <- read.csv("P2-Mispriced-Diamonds.csv")
diamonds

#so you can use read.csv() to have file.choose()....
#this allows you to select a file from your computer.
#it doesnot need to be in the working directory

#if your file is in the working directory
#then use read.csv("file name")
setwd("/Users/rajanbawa/Documents/R work")
getwd()
#working directory is the folder where all your working files are saved when you click the save icon.

#................
#exploring your data
head(diamonds)
#this function allows you to see first six rows
head(diamonds,n=10)
#using n to decide how many rows you wish to see in your output
tail(diamonds, n=3)
#tail is similar to head function..... just like a tail, it displays last vector elements
str(Revision.demo)
#this is little better in knowing how many observation(rows) you have
#variable or column names and their vector types
summary(Revision.demo)
#this function provides little extra then str()
#it provides min, max, median, 1st quartile, 3rd quartile etc for numeric vectors

#What is a quartile
#quartile means median of a quarter....
#data is arranged in an ascending order... lowest to highest value
#1st quartile is middle value of first 25% data.
#2nd quartile is middle value of whole data (it is the median)
#3rd quartile is middle value of last 25% data

#you can use boxplot to get a geometrical representation of quartiles
#parameter is geom = boxplot

nrow(diamonds)
#nrow() gives you number of rows 
ncol(Revision.demo)
#gives you number of columns
rownames(Revision.demo)
#for data frame/..... rows are always serial numbers
colnames(Revision.demo)
#column names are variable names
rnorm(5)
runif(5)
#these two functions gives you random values based on the distribution
#norm means normal distribution (mean=0 and sd=1)
#unif stands for uniform distribution
#what uniform distribution is that is yet to be covered

#.................
#using $sign
#very specific to data frames
Revision.demo$Country.Name
diamonds$price
#using $sign allows you to select the entire column
#this thing can come handy when you need to filter the rows
#if you need to look into specific rows that meet the criteria
#let's try
summary(diamonds)
#you want to filter rows.... price greater than 5000 be excluded
diamonds[diamonds$price<5000,]
summary(Revision.demo)
Revision.demo[Revision.demo$Birth.rate<12.12,]
#this is called filtering of data frame.... remember
#you are applying logical operation on a column to get specific rows
#so your columns are same
#what if you need to select specific column
Revision.demo[Revision.demo$Birth.rate<12.12,1:3]
#remember number of column are 5, you must select columns within that range
#applying two condition
#using & operator
Revision.demo[Revision.demo$Birth.rate<12.12 & Revision.demo$Internet.users >50 ,]
#filtering is applying logical operations
#logical operations uses logical operator
#<,>,<=,>=,!,!=,==,&,| 
#results of logical operations is in TRUE FALSE

#When you use filtering method in subsetting....
#R displays only those rows that have TRUE value.

#forming columns and deleting columns
#creating a column
Revision.demo$muliply <- Revision.demo$Birth.rate * Revision.demo$Internet.users
summary(Revision.demo)
head(Revision.demo)
#deleting a column
Revision.demo$muliply <- NULL
head(Revision.demo)

#To look at a specific value in column
Revision.demo$Country.Name[3]
#mathematical operations
Revision.demo$Birth.rate + Revision.demo$Internet.users
Revision.demo$Birth.rate * Revision.demo$Internet.users
Revision.demo$Birth.rate / Revision.demo$Internet.users
Revision.demo$Birth.rate - Revision.demo$Internet.users

#recycling of vectors 
#for recycling
#bigger column must be a multiple of smaller column
Revision.demo$Birth.rate
#this has 195 values
#let's create a new column
Revision.demo$small <- 1:5
#console has shown no error
#reason =- 195 is a multiple of 5
#195/5 = 39, perfectly divisible

#In recycling rep(), replication, happens
rep(1:5,time=39)
Revision.demo

#But if bigger column length is not a multiple of smaller column lenth
#then 
Revision.demo$smallnow <- 1:4
Revision.demo
#new column not created
Revision.demo$small <- NULL
Revision.demo

#...............
#drop=FALSE parameter

#in subsetting-
#your subset needs to be of the same type

#data frame is a 2-dimensional object
#that's why you can represent it in plot
Revision.demo[1,]
is.data.frame(Revision.demo[1,])
#When you select a single row.... it is a dataframe
Revision.demo[,1]
is.data.frame(Revision.demo[,1])
#When selecting a single column..... it is not a data frame


#why we want to convert it to a data frame....
#let's say you want to see the histogram of birth.rate
#then, that won't be possible... since it is a vector...

#how to avoid it
Revision.demo[,1,drop=F]
is.data.frame(Revision.demo[,1,drop=F])
#It is a data frame

#this drop=F parameter comes handy when you are building our own function
#provides consistency and helps avoid error.
#.............................

#qplot()
#this is called quick plot
#it is part of ggplot2 package
#which means... to use this function, you must have ggplot2 package installed
install.packages("ggplot2")
#install.packages(), installs the package from CRAN
#CRAN is a repository ...online storage for all R packages

#activate the package
library(ggplot2)
?ggplot2()

#library is a directory cum folder
#folder where all your packages are installed
#you use library() to activate the package present in library folder

qplot(data=Revision.demo,x=Internet.users,y=Birth.rate,size=I(4),color=Income.Group,shape=I(19),alpha=I(0.7),main="mypractice...LOL")

#mapping
#when you supply a variable name to a parameter
#color= Income.Group
#this is called mapping

#prevent mapping
#give value instead
#size=I(4)
#this means you want all dots of the size=4.

qplot(data=Revision.demo,x=Internet.users,y=Birth.rate,size=I(4),color=Income.Group,geom="boxplot",main="mypractice...LOL")
#if error says geom must be a character vector
# it means geom = ".......". vector in double quotations.

#...........how to create a data frame
#use data.frame(vector1,vector2,vector3...)..... it is similar to cbind()
data1 <- data.frame(Country.name=Revision.demo$Country.Name,Birth.Rate=Revision.demo$Birth.rate)
#this builds your data frame
data1
data2 <- data.frame(Country=Revision.demo$Country.Name,Code=Revision.demo$Country.Code,Internet.users=Revision.demo$Internet.users,Income.group=Revision.demo$Income.Group)
data2
str(data1)
str(data2)
#merge both datas
merged <- merge(data2,data1,by.x="Country",by.y="Country.name")
str(merged)

#you can add column names
colnames(merged) <-c("country","country.code","Internet.users.percent","IncomeGroup","birth.rate")
str(merged)

#shape parameter, shape=pch
#pch=17,solid triangle
#pch=2, hollow triangle
#pch=19, solid dot
#pch=23,hollow diamond
#pch=15, solid square

#exercise 
#use filtering in subsetting to just get Motorbike prices
Vehicle.Type <- c("Car","Car","Motorbike","Motorbike")
Price <-c(2999,4599,12000,14599)
df <- data.frame(Vehicle.Type,Price)
df
df[df$Vehicle.Type=="Motorbike",]


