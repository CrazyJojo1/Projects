
#.......................Grammar of Graphics
#history
#In 19th century, map that illustrates the french campaign against Russia, back in 1812.
#a map created by Charles Minar and he created it in 1869

#What does the map tells us??
#Where the french troops started, how many troops started (402,000 men in troops)
#Which route they traveled
#final destination - Moscow, how many troops were left (100,000 men in troop)
#And Return (black line)
#how many made it to french back alive (4000 men)

#map also uses temperature during travel.

#What was interesting about this data?
#this 2 Dimensional graph could depict 6 different kinds of data
#different kinds of data:
#1. number of troops
#2. distance they traveled
#3. temperature
#4. latitude and longitude
#5. direction of travel
#6. Also the time
#....................so charles minar was a pioneer in Graphical representation of data.
#his works on layering the image.
#data, aesthetics, geometry


#Grammar of Graphics came later
#it is actually a book written in 1999.
#this explains :-
#how to create charts that tells a story
#And what are the different components of it


#........................Layering
#layer on a chart will consist of 
#1. Data
#2. Aesthetics (things you actually see on a chart... x-axis, y-axis, color, size etc)
#3. Geometries (size of what, color of what...circle, square, dot etc)
#these three are the essentials for a chart

#data is needed, way to translate the data into the things you can see 
#and what forms those aesthetics are going to take...geometry

#additional layers
#4. statistics - make transformations to your data to create new variables and visualize them.
#5. facets - e.g. charts for each year. (if you have data for multiple years)
#6. Co-ordinates - is your chart in xy co-ordinates(Cartesian) or is it in polar co-ordinate
#do you want to zoom-in or zoom-out of your chart.... after everything is built,
#how would you like to see it.
#7. Theme - all the other stuffs that goes in your chart.
#Things that make your chart pretty.

#.....................................
#step1. get the data
#you cannot see the data on your chart, data is in your code.

#step2. Aesthetics
#you cannot see it either
#things like mapping of your data to your chart.... intermediary step
#aesthetics that we are using mostly is x-axis, y-axis, color.
#aesthetics basically means how is data mapped. 
#e.g.Aesthetics : x, Fill.
#x is the Budget(data) and Fill is the Genre (color)

#step3. Geometry:
#you have bar graph, or scatter plot, etc..

#step4: Statistics
#Since bar chart is a histogram - a frequency distribution.
#When we are creating a bar graphs... we are running a statistics.
#we are grouping our data... 500 rows and genre
#we are calculating bins, bin width and then frequency.
#how many movie falls into genre of comedy
#how many movie falls into genre of action, and so on...
#we are calculating a count variable - how many movie can you count in specific genre.
#So selecting a geometry of bar plot... you are by default building a histogram (statistics part)
#geometry and statistics work together for bar graphs.

#step5. Facets 
#if you have chart for every year


#step6.Co-ordinates
#for bar charts, we have x-axis and y-axis
#zoom-in and zoom-out
#so anything that has to do with how you observe your data is part of co-ordinates.

#step7. Theme
#Every thing else that you see in your graph
#title of the graph
#labels color and size used for x-axis and y-axis
#size of your data points on your graphs. 
#legend, size of legend, positioning of the legend. title of the legend
#Themes are called "Non-data-ink"
#why?
#Themes are completely not related to your data, 
#but they are still present in the form of ink on your chart

#Note: these layers not need to be in this order that we have presented

























