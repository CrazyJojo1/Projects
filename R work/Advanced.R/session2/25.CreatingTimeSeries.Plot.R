
#Building a Timeseries Plot
#activate ggplot2 using library()
library(ggplot2)
?ggplot #help pop-up window only appears if the package is activated

#create the plot
#6. Plot for "all" the machines - Plot
util
str(util)
#since we need data for all the machines

#create the base layer
p <- ggplot(data=util)
#add geometric layer to it
p + geom_line(aes(x=PosixTime, y=Utilization))
?geom_line #it connects the point to form the line

#let's try to make it prettier - mapping it to machine
p + geom_line(aes(x=PosixTime, y=Utilization, color = Machine))

#let's make line thicker
#since we want all the lines to be thick, it will be setting

p + geom_line(aes(x=PosixTime, y=Utilization, color = Machine),
              size=1.2)
#their is still quite a bit of overlapping - add tranparency
p + geom_line(aes(x=PosixTime, y=Utilization, color = Machine),
              size=1.2,
              alpha=0.6)
#this doesn't help
#we be better off if we can get 
#separate timeseries plot for each machine

#remove alpha and add facet grid
p + geom_line(aes(x=PosixTime, y=Utilization, color = Machine),
              size=1.2)+
              facet_grid(Machine~.)
?facet_grid
#facet_ grid is a separate layer

#let's add a horizontal line at a 90% mark
#why?
#For our project - 90% utilization is our threshold
#focus is find machine with hours when utilization was below 90%

p + geom_line(aes(x=PosixTime, y=Utilization, color = Machine),
              size=1.2)+
  facet_grid(Machine~.) + 
  geom_hline(yintercept = 0.90)

#let's add color to that horizontal line
#this will be setting
p + geom_line(aes(x=PosixTime, y=Utilization, color = Machine),
              size=1.2)+
  facet_grid(Machine~.) + 
  geom_hline(yintercept = 0.90, color= "Grey", size=1.2)

#little more - 
p + geom_line(aes(x=PosixTime, y=Utilization, color = Machine),
              size=1.2)+
  facet_grid(Machine~.) + 
  geom_hline(yintercept = 0.90, 
             color= "Grey", 
             size=1.2,
             linetype=3)
?linetype
#it is used to change the appearance of a line
#linetype=0, blank (no line)
#linetype=1, solid line
#linetype=2, dashed
#linetype=3, dotted line
#linetype=4, dot-dash
#linetype=5, longdash
#linetype=6, twodash


#Insights
#using linetype - you can clearly tell
#machine RL1 and SR6 has time when utilization did fall <90%

#............save this plot and put it in an object
myplot <- p + geom_line(aes(x=PosixTime, y=Utilization, color = Machine),
              size=1.2)+
  facet_grid(Machine~.) + 
  geom_hline(yintercept = 0.90, 
             color= "Grey", 
             size=1.2,
             linetype=3)
myplot
#adding this plot to our list
list_rl1
list_rl1$plot <- myplot
#check
summary(list_rl1)
#change name from plot to Plot
names(list_rl1)[6] <- "Plot"
#print list
list_rl1

#Things to remember
#plot are stored as Lists
#Data frame is also stored as list
str(list_rl1)

#There we go.... a single list has quite a lot of info
#a convenient tool to arrange your data in one single function- list()













