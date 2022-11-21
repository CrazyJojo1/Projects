
#till now, we have done matplot()- plots data column by column
#qplot(), plots histograms, scatter plot, and mapping in quickest time possible

#...............
#In this section we will talk about ggplot() function
#ggplot() is a main function in the ggplot2 package

#It provides you lot of flexibility and control when you are working with 
#your charts and graphs

#...............MOVIE RATINGS
#project brief

#we will be visualizing rating of movies between 2007-2011

#draw 5 graphs that tell a story about the data

#correlation between audience and critic ratings has evolved
#throughout the years by genre.

Ratings <- read.csv("Homework6/MovieRatings.csv")
Ratings
nrow(Ratings)
ncol(Ratings)
str(Ratings)
#convert year of release into factors
Release.year <- factor(Ratings$Year.of.release)
Ratings$Year.of.release <- Release.year

#Rotten Tomatoes ratings is critics ratings. Rating is based on their expert opinion.
#Audience ratings is rating by audience.

#comparing both the columns, Rotten tomatoes and audience ratings, you can know how much different they are.

#Budget of the movie is how much money is being spent by producers.
#Can Budget affect the ratings?????

#Year of Release is another variable.... helps you to do year by year analysis.















