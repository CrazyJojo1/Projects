

#.............co-ordinate layer 

#last time we learned facets, and 
#when using geom_smooth with facets we noticed something
#the y-scale goes negative with uncertainty in data
#confidence is low, then band becomes wider, and 
#that can stretch your chart 
#e.g. 0 to 150 becomes -50 to 150. 

#so today we will learn the concept of zoom-in and zoom-out
#.............learning how to control our co-ordinate

#Today we will learn:
#how to "limit" our axis
#how to "zoom" our axis

#.............
str(movies)
#create an object
m <- ggplot(data=movies, aes(x=CriticRating, 
                             y=AudienceRating,
                             color=Genre,
                             size=BudgetMillion))
#............notice:
#you are using column names every time you create a plot or 
#add a layer, for mapping etc.

#so it is best to keep column names short.;
#makes your work easy.
#........
#add 2nd layer on it
m + geom_point()

#let's say you wish to zoom-in to
#the top right corner of your plot...top right represents the best rating
#top right corner:
#critic rating- 50 to 100 and audience rating - 50 to 100 as well.

#how to do that
#...............zoom-in
m + geom_point() + 
  xlim(50,100)
#we are adding limit to x-axis co-ordinates
#pay attention to warning message:
#............Warning
#Warning message:
  #Removed 304 rows containing missing values (geom_point)
#...........meaning
#"removed 304" is the key point here.
#it not only zoomed-in, but also removed those points

m + geom_point() + 
  xlim(50,100) +
  ylim(50,100)
#now you added limit to both axis
#Warning message:
#Removed 335 rows

#.........Won't work well always
n <- ggplot(data=movies, aes(x=BudgetMillion))
#add histogram
n + geom_histogram(binwidth=10, 
                  aes(fill=Genre),
                   color="Black")
#zoom-in
#what co-ordinates??
#zoom-in from 0 to 50 on the y-axis
n + geom_histogram(binwidth=10, 
                   aes(fill=Genre),
                   color="Black") + 
  ylim(0,50)
#for xlim=0,100 and ylim=0,50
n + geom_histogram(binwidth=10, 
                   aes(fill=Genre),
                   color="Black") + 
  xlim(0,100) +
  ylim(0,50)
#error or bad plot
#Why?????
#Event though it did zoom-in, problem is
#it removed data what was supposed to be close to 50 or above
#that's not Good!!
#We want to zoom-in , not to get rid of useful data

#....fix??
n + geom_histogram(binwidth=10, 
                   aes(fill=Genre),
                   color="Black") +
  coord_cartesian(ylim = c(0,50))
#coord_cartesian() function using x and y co-ordinates and
#then allows you to zoom as per your requirement
#coord_cartesian(ylim = c(0,50)
#you are providing y-coordinate
#c(0,50) means vector containing two values

#........good bit
#You don't have any warning message here
#it just zooms in, without removing any data

#let's give it x limit as well
n + geom_histogram(binwidth=10, 
                   aes(fill=Genre),
                   color="Black") +
  coord_cartesian(xlim=c(0,50),ylim = c(0,50))

#Voila!!
#so 3rd layer facilitated zooming-in 

#............it works perfectly fine

#let's try zooming-in the scatter-plot we created
m + geom_point() +
  coord_cartesian(xlim=c(50,100),ylim=c(50,100))
#add facet layer
m + geom_point() +
  coord_cartesian(xlim=c(50,100),ylim=c(50,100)) +
  facet_grid(Genre~ReleaseYear)
#add smoother to see pattern emerging 
m + geom_point() +
  coord_cartesian(xlim=c(50,100),ylim=c(50,100)) +
  facet_grid(Genre~ReleaseYear) +
  geom_smooth()

#for ylim=c(0,100) 
m + geom_point() +
  coord_cartesian(ylim=c(0,100)) +
  facet_grid(Genre~ReleaseYear) +
  geom_smooth()
#now you don't have any negative band 

#Insights
#For actions:
#audience rating and critic ratings has linear relation
#Comedy:
#Regardless of how the Critics rate, 
#Audience always rate them above average (50%)
#Comedy is definitely a safe bet for Directors
#Drama:
#Audience rate almost every Drama above 50
#while Critics are all over the place rating them between 0-100
#But Audience definitely likes Drama.

?xlim()

