#different layers used for visualizations?
#data, aesthetics, Geometry, statistics, facets, co-ordinates, Theme

#Today we will be talking about data (1st layer)
#...............What is a factor??

#load your data
getwd()
movies <- read.csv("Homework6/MovieRatings.csv")
#print movies data frame in console
movies
head(movies)
#looking at the titles - Rotten.Romatoes.Ratings..
#you see dots, and double dots
#why
#R cannot accept spaces or special signs....
#so it replaces them instead with dots

#Fix
colnames(movies) <- c("Film", "Genre", "CriticRatings", "AudienceRatings", 
                      "BudgetMillions", "ReleaseYear")

#colnames are fixed.
#we don't have any single or double dots 

#check top and bottom rows
#check to see everything is proper
head(movies)
tail(movies)

#check the structure
str(movies)
#if you look at year
#ReleaseYear is an integer vector

levels(movies$Genre)
#NULL
#convert column into a factor
movies$Genre <- factor(movies$Genre)
str(movies)
#now your Genre is a categorical variable containing 7 levels


#what is a factor in R?
#Factor is a categorical variable
#R will look through your column and will identify levels
#And will assign each level a number
levels(movies$Genre)
#so Action is 1, so if R sees Action as a value in the column Genre, then 
#it will assign it a value of 1.
#Likewise for Comedy, it will assign it a value of 3, and so on ....

#The columns converted in to factor...are never used for numerical operation.
#They are best used for mapping.
#e.g. you want to see budget per Genre....


#look at summary
summary(movies)

#ReleaseYear is an numeric variable.
#let's convert year to a categorical variable
levels(movies$ReleaseYear)
#no levels
#add factors
#use factor function
movies$ReleaseYear <- factor(movies$ReleaseYear)
levels(movies$ReleaseYear)

#check summary
summary(movies)
#check structure
str(movies)
#your Genre and ReleaseYear is now a factor

#one final bit.... 
#you must decide from the start.. whether a given variable needs to a numeric vector 
#or a categorical variable.
#categorical variable will be have many values repeating ....2007 repeated 79 times,
#2008 repeated 125 times and so on..






