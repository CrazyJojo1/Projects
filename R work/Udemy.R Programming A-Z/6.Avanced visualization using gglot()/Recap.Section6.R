

#ggplot2
#has qplot() and ggplot() in it

#ggplot() better than matplot() and qplot()

#.........Grammar of graphics
#Graphical representation was pioneered by Charles Minard
#he used it to explain french struggle during Napolean voyage to Russia in 1812

#a single chart of his ... you can see distance, temperature, number of troops left, route travelled
#and that give birth to grammar of graphics

#adding layering on your chart to add additional information
#each layer represent information

#........concept of 7 layers'

#aesthetics, geometry, facet, theme, cor-ordinate, data , statistics
#3 main layers
#data, aesthetics, geometry
#additional layer 
#statistical layers, facet, co-ordinate and theme

#............data
#starting layer
#aesthetics
#mapping, anything that you see on your plot, the essential bit
#labels, color, size of points, mapping 

#.........geometry
#this is what add dimensionality to it
#if you in your first layer (data) choose one variable for your axis
#then you can use geom_histogram (this gives you histogram)
#if you choose 2 variables from your data, then 
#use geom_point (this gives you scatter plot)

#........statistics layer
#geom_histogram
#geom_smooth
#these two geom helps you understand the frequency and the patterns emerging from the data

#..........facet
#using facet_grid(row variable~column variable)
#both row and column variable are categorical variables
#for only rows (row~.), dot means empty
#this allows you to divide your plot based on the catergorical variable 

#...............co-ordinate
#this allows you to zoom-in 
#use coord_cartesian(xlim=c(a,b), ylim=c(a,b)) function
#xlim() and ylim() are used to limit your x and y co-ordinates
#e.g. if you want to see x points from 50 to 100
#then using xlim=c(50,100) will allow you to see just that in your plot

#using xlim() and ylim() as layers
#it will do the same as coord_cartesian(), however, it will remove some data points close to the boundaries 
#e.g. xlim(50,100) will get rid of data close to 100
#this is bad when working with plots

#............theme
#non-data-ink
#non-data means themes are not linked to any data
#ink means you can see them in your plot

#use theme() function to change labels, change color, change size of these labels, change legend size and legend text size
#add title to your plot and change its size and color
#you can also change the font type for the title

#use xlab() and ylab() to change the labels for x-axis and y-axis
#use axis.title.x=element_text(color="", size=) to change color and size of labels
#use axis.text.x=element_text(size=) to change size of points displayed on x-axis and y-axis
#use legend.title=element_text(size=) to change legend's title size
#use legend.text=element_text(size=) to change legend's text size

#use ggtitle="" to add title, this is additional layer
#and not part of theme() function
#use plot.title=element_text(color="",size=,family="") within theme() to change title's size and color and font type
#family="" parameter is used to change font type

#...............
#factors in R
#convert int vector into factor
#let's say you have a column that display year from 2010 till 2015 for the data presented
#so you have 5 values in that column :2010, 2011, 2012, 2014, 2015.
#and this column is listed as a int vector

#now its not like you will use year's data into mathematical operations
#and best if you can have them as factor
#so you can see how many data fall in 2010 and 2011 and so on 

#factors are categorical variables 
#to form factor 
#use factor(column name)
#to select specific column of a data frame... you use
#dollar sign
#movies$Year will select column Year from a data frame object movies

#then pass that factor(column name) values to that column
#movies$Year <- factor(movies$Year)
#use levels(movies$Year) to get categorical data in that column
#or use str(data frame name)
#this will show you factor w/ n levels

#........
#plotting with layers
#layers are objects
#in ggplot(), you are placing one object over the another

#over-riding aesthetics
#it is best to avoid over-riding
#you can do that by minimizing aes() in your data layer
#this allows you to add aes() as you move on with your layering

#for instance you add aes(x=...., y=...) and later
#in next layer, you wish to change x and y.
#you can sucessfully do it, but you will need to use 
#xlab() and ylab()...you more layers to see the new labels on your plot
#not using it will change the plot as per new x and y, not labels will remain to what you defined in the previous layer
#use aes() to add mapping

#.......
#mapping vs setting
#mapping
#use aes() for it
#use parameter=column name
#e.g. aes(color=Genre) is mapping. Here, you are changing color as per Genre

#setting
#providing a fixed value for all data points
#don't use aes()
#e.g. color="red" is setting. You are setting color for all data points on your plot to red

#using aes(color="red") will not be right
#here you are doing setting in aes() function
#this will not only create a legend (red), but will show some different color than red for your data points

#........
#histogram and density charts
#histogram is a frequency distribution
#R decides number of bins
#then based on decided bins, R calculates bin width
#then it calculates frequency (how many values fall within that bin width)
#e.g. how many student scored between 10-15 ,
#jack=12, jenny=16, john=11.... 2 students scored b/w 10-15

#for histogram
#you just need a single variable (1-Dimension)
#R will add 2nd dimension by itself

#histogram is geometry and statistical layering (2 in 1)
#you can specify binwidth
#geom_histogram(binwidth=10, aes(fill=Genre),color="Black" )

#difference between fill and color
#fill is for the body
#color is for the borders

#.......probability density
#use geom_density()
#use geom_density(position="stack") to stack one plot on top of another.

#......using skeleton plot
#ggplot() create a base layer with no data in it
#this is called skeleton
#you do this when you want to work with multiple data
#maybe you wish to add data to next layer that will be changing 
x <- ggplot()
x+geom_histogram(data=movies, aes(fill=Genre), color="Black")
#now you wish to get histogram for another data you have
x + geom_histogram(data=poverty,aes(fill=Genre), color="Black")

#since data is changing for every plot...
#you may find it convenient to use skeleton layer

#........statistical transformation
#geom_smooth()
#helps you see patterns, correlations etc
#pay attention to fill
#ignore data that has big bands
#if uncertainty is high, then confidence band will increase in size
#this can result in negative range
#confusion...........I need to study confidence band

#geom_boxplot()
#when looking at a boxplot
#think about these three things
#outliers... 
#below min........
#above max.....t
#median
#median is middle value and is not mean
#mean may not give you the average if your data has outliers whose values are too big
#so median is a safe bet when understanding average behaviour
#compare the medians
#median close to the max (good)
#median close to the min (bad)

#variance
#variance reperesents uncertainty
#long boxplot means high variance, bad
#narrow or compact boxplot means low varaince, good

#you can also use right-skewed distribution and left-skewed distribution 
#to understand the variance
#median close to min (right-skewed) and 
#median close to max (left-skewed)

#use geom_boxplot(alpha=0.6, size=1.2)
#alpha is a parameter that adds transparency
#value of alpha is between 0 and 1
#0 means completely transparent
#1 means opaque

#size parameter is add thickness to the boxes

#geom_point() and geom_jitter()
#geom_jitter() gives you chaotic mess of points
#this looks better as data is chaotic mess...lol



























