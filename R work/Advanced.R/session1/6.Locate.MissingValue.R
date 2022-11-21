

head(fin,n=24)
#you have couple of empty cells
# na in brackets (<NA>) -- why is it in brackets??
#NA

#how do we pull out rows that contain missing data
complete.cases(fin)
#syntax :- complete.cases(name of data frame)
#you will get a logical vector
?complete.cases
#it checks row by row.... 
#if any rows contains missing value - you get FALSE

#using filtering in subsetting
fin[complete.cases(fin),] #this willl pick only rows that contain TRUE values
#but we are looking for FALSE value
fin[!complete.cases(fin),]
#this is not picking empty cells.

#solution
#convert blank spaces to NA right at the time of import
getwd()
setwd("/Users/rajanbawa/Documents/R work/Advanced.R/Task1-Assignment.Prep")
fin <- read.csv("fortune.500.csv",na.strings=c(""))
head(fin,24)
#.............sth we covered yesterday
fin$ID <- factor(fin$ID)
fin$Industry <- factor(fin$Industry)
fin$Inception <- factor(fin$Inception)
fin$Revenue <- gsub("\\$","",fin$Revenue)
fin$Revenue <- gsub(",","",fin$Revenue)
fin$Revenue <- as.numeric(fin$Revenue)
fin$Expenses <- gsub(" Dollars","",fin$Expenses)
fin$Expenses <- gsub(",","",fin$Expenses)
fin$Expenses <- as.numeric(fin$Expenses)
fin$Growth <- gsub("%","",fin$Growth)
fin$Growth <- as.numeric(fin$Growth)
#........................................
fin[!complete.cases(fin),]
#na.strings means what strings to replace with NA
#c("") means empty vectors
#c("","NY") will replace all NY and empty cells into NA.

#this replaces all empty cells with <NA>

#why you have NA and <NA> ??
#this has something to do with the structure 
str(fin)
#characters or factor variables are represented by <NA>
#numeric value is represented by NA.
















