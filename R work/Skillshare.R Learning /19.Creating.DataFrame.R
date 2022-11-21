

#extract inbuilt data sets in R
data()
?mtcars
#1974 motor trend car road tests
#provides you 32 rows and 11 variables
#shares design and body build of these automobiles
#performance (gross horsepower is provided)

str(mtcars)
#all numeric variables
#you have row names
#remember : rownames are not part of the data sets

#............how to create a data frame
?data.frame
population <- data.frame(
  Name=c("John","Bob"),
  Age=c(35,40),
  Hair=c("Brown","Black"),
  Married=c(T,F)
  )
population$Age
population[["Age"]]
#data frame is a list
population[1:2]
population[1:4]
population[-3]
population[c(1,3)]
#here indexation represents columns. 
#unlike matrix where you give row and columns, you can just specify the column 
population$Name
population[2,3]
population[2,"Married"]
#using $, dollar sign allows you to select entire column

#once you select a specific column, you can even look into that
#column
population$Age[2]

#using dollar sign to do mathematical operation 
#adding new column to data frame
population$Sexualorientation <- c("hetro","homo")
population
#deleting new column
population$Sexualorientation  <- NULL
population[c(1),c(2)]







