

#Today we will talk about statistical layer (4th layer) 
#....................Statistics
library(ggplot2)
?geom_smooth
#allows you to :-
#observe trends and
#dependencies/relationships
#for instance, if you have lots of points, then
#geom_smooth will help you build correlations and 
#trends that you won't see right away

#.........using geom_smooth
str(movies)
u <- ggplot(data=movies, aes(x=CriticRating, y= AudienceRating, color= Genre))
#add geom_smooth 
u + geom_point() + geom_smooth()
#ughh
#fix??
u + geom_smooth(fill=NA)  + geom_point()

#What do you see in this plot??
#1. Romance Genre
#if critic rating is low(25), then
#audience rating will be pretty good (60)
#2. Horror Genre
#Audience rating is between 25-70
#Critic rating is between 0 and 90
#3. Action Genre
#Audience and critics both rate almost the same 

#..........so geom_smooth() enables us to see things 
#which we otherwise won't

#............Statistical methods
#histogram (geom_histogram())
#smoother (geom_smooth())
#boxplot (geom_boxplot())
u <- ggplot(data = movies, aes(x=Genre, y= AudienceRating,
                               color=Genre))
u + geom_boxplot()
#add settings
u+ geom_boxplot(size=1.2)
#add some points
u + geom_boxplot(size=1.2) + geom_point()
u + geom_point() + geom_boxplot()
#geom_point() is not adding any understanding to the plot

#the hack to that:
u + geom_boxplot(size=1.2) + geom_jitter()
#geom_jitter() use
#it through the points around
#jitter means random chaotic mess you see around boxplots
#So everytime you run the code.... R will vary the dot-scatter

#benefit of using geom_jitter 
#you can see the points and boxplot clearly.

#you can see the outliers better (look at thriller Genre)
#so, geom_jitter() and geom_boxplot() are a good combo

#..........another way to visualize it (better way)
u + geom_jitter() + geom_boxplot(size=1.2)
#size parameter is add thickness to these boxes
#now you see boxes with no points

#fix??

#add transparency
u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.6)
#cool

#Understanding boxplot
#for each genre, you see the average
#mean of Action is around55
#mean = 60 for Adventure
#comedy has lower mean than Action
#Horror gets lowest mean average among all Genres
#Drama, Romance, and Thriller are on top when compared on average audience ratings


#notice the size of these boxplots
#smaller boxes means sd is less
#low variance means very likely to fall close to average

#...............Challenge
v <- ggplot(data=movies, aes(x=Genre, y= CriticRating, color= Genre))
#add 2 layers on top of it
v + geom_jitter() + geom_boxplot(size=1.2, alpha=0.6)

#analaysing this plot??
#looking at the average critic rating w.r.t. Genre
#Thriller do make on the top of the lists 
#Horror get the least score
#.........similar to average audience ratings w.r.t. Genre

#if you compare these boxplot w.r.t to audience ratings
#averages are different
#boxes are not narrow... they are long
#meaning their is lot of variance 
#and except for thriller and horror,
#average for all the remaining Genres fall close to 50.























