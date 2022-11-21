
#..........Theme layering 
#non-data-ink
#change formatting on the text
#change colors
#change legend positioning
#change location of legend
#...etc.

#.............
str(movies)
#create a histogram
o <- ggplot(data = movies, aes(x = BudgetMillion))
#add geom_histogram
h <- o + geom_histogram(binwidth = 10, 
                   aes(fill = Genre),
                   color="Black")

#...........working with themes
#Changing axis labels
h + 
  xlab("Money Axis") + 
  ylab("Number of Movies")
#label formatting
h + 
  xlab("Money Axis") + 
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(color = "DarkGreen",
                                    size=30),
        axis.title.y = element_text(color = "Red", size=30) )
#axis.title.x means x-axis label and element_text is to add
#characteristics to the text 

#tick mark formatting
#make x and y scale-point bigger
h + 
  xlab("Money Axis") + 
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(color = "DarkGreen",
                                    size=30),
        axis.title.y = element_text(color = "Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20))


?theme
#theme() contains quite a lot of parameters.
#just use help window to see what you need.

#legend formatting
h + 
  xlab("Money Axis") + 
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(color = "DarkGreen",
                                    size=30),
        axis.title.y = element_text(color = "Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20))
#legend.title changes the title
#legend.text changes the text size of categories listed under it

#controlling the positioning of the legend
h + 
  xlab("Money Axis") + 
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(color = "DarkGreen",
                                    size=30),
        axis.title.y = element_text(color = "Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1))

#you wish to put legend on the top right corner. 
#1st quardrant 
#c(1,1)... is a numeric vector containing 2 elements
#for position, you can pass either 0 or 1
#for more info use help 
?theme
#c(0,0) put the legend on the left bottom corner 
#c(0,1) puts the legend on the left top corner
#c(1,0) puts the legend on the right bottom corner
#c(1,1) puts the legend on the right top corner

#but problem is that legend on the top right corner is crooked
#fix??
#give anchoring point
#how??

h + 
  xlab("Money Axis") + 
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(color = "DarkGreen",
                                    size=30),
        axis.title.y = element_text(color = "Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1))
#legend.justification = c(1,1) means
#you wish to put top right corner of the legend in the 
#top left corner of the chart

#title formatting
#adding title
#add layer using ggtitle("name of the title")
h + 
  xlab("Money Axis") + 
  ylab("Number of Movies") +
  ggtitle("Movie Budget Distribution") +
  theme(axis.title.x = element_text(color = "DarkGreen",
                                    size=30),
        axis.title.y = element_text(color = "Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1))

#ggtitle("Movie Budget Distribution") allows you to add title
#Problem??
#title font size is small
#fix??
#under theme function

h + 
  xlab("Money Axis") + 
  ylab("Number of Movies") +
  ggtitle("Movie Budget Distribution") +
  theme(axis.title.x = element_text(color = "DarkGreen",
                                    size=30),
        axis.title.y = element_text(color = "Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text(color="DarkBlue",
                                size=40,
                                family="Courier"))
#family="Courier" is a parameter to change the font type











