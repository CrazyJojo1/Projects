str(movies)
#2nd layer for our advanced visualization
#Also introduction to ggplot()
#................Aesthetics
#load the package using library() function
library(ggplot2)

#today we will use ggplot()
#unlike qplot(), ggplot() is not as quick
#syntax:
#ggplot(data=dataframe, aes(x=variableonX-axis, y=variableonY-axis))
#aes() is the function that allows you to set aesthetics
#aesthetics is how you want to map your data.
#e.g. you want critic rating on the bottom(x-axis) 
#and audience rating on the top(y-axis)
?aes()
ggplot(data=movies,aes(x=CriticRatings, y=AudienceRatings))
#but if we run above code....no data appears, except for x-axis and y-axis
##you must specify geometry
#you must tell... whether you want lines or dots or boxplot etc.

#geometery layer
#use + (plus sign) to add additional layers
ggplot(data=movies,aes(x=CriticRatings, y=AudienceRatings)) + 
  geom_point()
#we are adding geom_point()function...
?geom_point
#this function allows us to create scatter plot


#Since now we have geometry,
#we can assign new parameters to that geometry
#Remember: aesthetics are things that we see.

#add color
#mapping color to genre
ggplot(data=movies,aes(x=CriticRatings, y=AudienceRatings,
                       color=Genre)) + 
  geom_point()
#ggplot() creates a legend for us..... unlike matplot(), 
#we don't need to use legend() function for it.

#add another aesthetics
#size- you can see the size of dots.
#so it is part of aesthetics
ggplot(data=movies,aes(x=CriticRatings, y=AudienceRatings,
                       color=Genre, size=Genre)) + 
  geom_point()
#you got a warning message:
#this says, it not appropriate to have bigger dots as per Genre
#e.g. Horror has bigger dots than Drama
#Thriller has bigger dots than Romance and Horror, etc.

#mapping the size to some other variable
#size=BudgetMillions
ggplot(data=movies,aes(x=CriticRatings, y=AudienceRatings,
                       color=Genre, size=BudgetMillions)) + 
  geom_point()

#now bigger bubbles for bigger budget and vice-versa.
#color is Genre













