
#.................Using Facets
str(movies)
#create an object
w <- ggplot(data=movies, aes(x=BudgetMillion))
#add a histogram geometry to it
w + geom_histogram(binwidth = 10, fill = "White", color = "Orange")
#analysis:
#most movie budget is less than 80 million
#max budget fall between 30-40 million range

#add mapping and setting
w + geom_histogram(binwidth = 10, 
                   aes(fill=Genre), 
                   color="Black")
#can you understand what those budget division are:
#adding mapping to this histogram is resulting confusion
movies
#budget is based on the year and genre
#so each bar represents a range based on bin width
#you see division based on Genre for that specific range

#understand it like this
#100 movies fall in budget range 10-20 million
#out of 10: 30 were action, 20 were comedy and rest were thrillers
#so you see the frequency of them (which is 30:20:50) on y-axis


#...........solution to eliminate this confusion
#facets:
#having a bar plot for each Genre

#adding facet layer 
w + geom_histogram(binwidth = 10, 
                   aes(fill=Genre), 
                   color="Black") +
  facet_grid(Genre~.)
##Syntax:
#facet_grid(what you want in the rows ~ what you want in the columns)
#use dot(.) if you want the rows or column to be empty

#Genre~.
#meaning
#Genre is the rows.... each row represent Genre

#So left of tilda (~) is the rows
#right of tilda is the column

#Since we want nothing in the column side,
#you are using dot (.)

w + geom_histogram(binwidth = 10, 
                   aes(fill=Genre), 
                   color="Black") +
  facet_grid(.~Genre)
#now you have column wise histogram plot for each Genre.

#........parameter used in facet_grid() function
w + geom_histogram(binwidth = 10, 
                   aes(fill=Genre), 
                   color="Black") +
  facet_grid(Genre~.)
#you have row-wise histogram plot for each Genre

#But there is a problem in this??
#Since y-axis gets divided into 7 equal parts
#so size of these bars are just too small to read

#solution??
#use parameter- scales
w + geom_histogram(binwidth = 10, 
                   aes(fill=Genre), 
                   color="Black") +
  facet_grid(Genre~., scales = "free")
#now y-axis points for each genre is different
#there are 20 points for actions
#6 for Adventure
#40 for comedy (comedy movies are just more I guess)
#30 for Drama
#10 for Horror
#.........you get the idea

#bar length increases as y-axis points need not be same for each plot

#.......y axis point are called scales

#When looking at histograms
#make it a habit to identify the distribution
#e.g. Comedy genre has normal distribution...almost
#Action, Adventure, and Thriller have lot of variance in their budgets
#.......things like this adds to your analysis


#...................applying facets to scatter plots
x <- ggplot(data=movies, aes(x= CriticRating, y= AudienceRating, color=Genre))
#add scatter plot layer to it
#use geom_point
x + geom_point()
#add parameter to it to increase the size
x + geom_point(size=3)
#size parameter increases the size of your dots

#adding facets
x + geom_point(size=1.5) + facet_grid(Genre~.,
                                      scales = "free" )
#What do you see??
#Action, comedy and drama data is more
#more movies for those genre

#Also audience rating w.r.t. critic rating vary significantly for these three genres

x + geom_point(size=1.5) + facet_grid(.~ReleaseYear, scales="free")

#let's add rows and column (not using dot sign)
x + geom_point(size=1.5) + facet_grid(Genre~ReleaseYear, scales="free")

#now you have critic ratings vs audience rating for each year as per Genre
#analysing
#For action
#except 2007, you are seeing an almost linear graph

#.........add a smoother
x + geom_point(size=1.5) + 
  facet_grid(Genre~ReleaseYear, scales="free") +
  geom_smooth(color="Black")
#change the arrangement 
x + geom_point(size=1.5) + 
  geom_smooth() +
  facet_grid(Genre~ReleaseYear, scales="free") 
#......add budget as the size...Mapping
x + geom_point(aes(size=BudgetMillion)) + 
  geom_smooth(fill=NA) +
  facet_grid(Genre~ReleaseYear, scales="free") 
#size=BudgetMillion means for bigger budget, 
#increase the size of the dots

#.............................Important
#one problem
#y-axis scales are from -50 to 150
#why -50??
#This is because we are using geom_smooth() function
#if uncertainty is high, 
#then bands (fill of geom_smooth) become wide

#Band represent confidence interval
#for low confidence, bands are wider and
#this stretches up your chart

#solution
#learn to zoom-in and zoom-out
#zooming-in into our chart will allow us to set the view between 0 and 100 or 0 to 150






