
#..............continuation to aesthetics

#things we learned in overriding aesthetics
q + geom_point(aes(x=BudgetMillions)) +
  xlab("Budget Millions $$$") +
  ylab("Ratings by Audience")

#............mapping vs setting
str(movies)
#create a new object r
r <- ggplot(data=movies, aes(x=CriticRatings,y=AudienceRatings))
#add 2nd layer on top of it
r + geom_point()

#give it some color using mapping
r + geom_point(aes(color=Genre))

#Setting:
r + geom_point(color="DarkGreen")
#here we get one color for all points.
#this is similar to what we learnt in qplot
#when we used color=I("DarkGreen")

#Error:
r + geom_point(aes(color="DarkGreen"))
#eventhough we gave input of DarkGreen, we get salmon color.
#plus you are getting a legend
#What is happening?
#Even though you are setting the color to DarkGreen,
#R will think you are mapping as you are setting value using aes()

#so for mapping use aes()
#for setting, don't use aes() and just set value to the parameter

#What is confusing here??
#color parameter is used for aesthetics (color is something we can see)
#But inside ggplot(), color is a parameter which can be mapped or set to a value

#............practice 
str(movies)
#mapping
r + geom_point(aes(size=BudgetMillions))
#setting
r+geom_point(size=10)
#setting will set all the points to same value, whereas 
#mapping will show variation in size 

#error
r + geom_point(aes(size=10))
#this is an error
#how?
#size is not 10... you can tell by comparing the plot when you set the size to 10
#as we are using aes(),
#R is looking at size=10 as if it 10 were a category
#so anyone in the category 10 will get this specific size.
#that's what leads to error.










