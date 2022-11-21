#use (cmd+option+i) to start a new chunk code in R notebook.

#...............Project brief
#Financial review:
#list of 500 companies, 
#create visualizations for upcoming online publication
#1. A scatter plot showing revenue, expenses and profit.
#2 scatterplot between expenses vs revenue relationship
#3. Boxplots showing growth by industry

#Elephant in the room?
#data that you will be importing will have numerous discrepancies.


#...............importing data
getwd()
setwd("/Users/rajanbawa/Documents/R work/Advanced.R/Task1-Assignment.Prep")
getwd()

fin<- read.csv("fortune.500.csv")
#exploring data
head(fin)
tail(fin)
str(fin)
#revenue, expenses and growth are character vectors
#Industry, Inception could be a factor variable
summary(fin)
dim(fin)
nrow(fin)
View(fin)

anyNA(fin)#imported data has missing value

#......changing from non-factor to a factor (categorical variable)
fin$ID <- factor(fin$ID)
fin$Industry <- factor(fin$Industry)
fin$Inception <- factor(fin$Inception)
fin$State <- factor(fin$State)
fin$City <- factor(fin$City)
#check if these columns got converted into factors
levels(fin$ID)
levels(fin$Industry)
levels(fin$Inception)
levels(fin$State)
levels(fin$City)
str(fin)

















