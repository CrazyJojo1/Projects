

#matplot
?matplot #designed to plot columns of one matrix against the columns of another matrix

x <- c(1,2,3,4,5,6)
y <- c(6,7,8,9,10,12)

matplot(x,y, type = "p",pch = .0001, col = 1:10)

#we won't be using matplot a lot... just for this section.
#There are more powerful tools in R

#paramters used in matplot
#x,y are name for your vectors or matrices
#type = type of plot you want. e.g. line plot (type="l"), point plot (type="p")
#let's cover 'type' arguments:
#"l" is for line.
#"p" is for point.
#"b" is for both points and line.
#"c" is for empty points joined by line. This means where you has point, you will have empty spaces.
#"o" for overplotted points and lines. meaning- a straight line with point on top.
#"o" is not as good looking as "b". But they are quite similar.
#"s" is for stair steps.
#"h" is for histogram. Which means vertical line originating from x-axis.
#"n" is for no points or line. A total blank... You just have x-axis and y-axis points

#we won't be using lty,lwd,lend

#pch parameter 
#pch is for points and their representation
#pch = "." or pch = 46 means you want your points to be displayed as dots
#pch = .0001 gives you a square of area .0001inch2
#pch = "a" means you need your points be displayed as letter a

#col parameter 
#it is a vector of color
#So you will need to supply a vector for each vector element

#let's practice
FieldGoals
#FieldGoals matrix has 10 columns

#matplot() plots columns one by one.
matplot(FieldGoals,type="b",pch = 15:18,col = c(1:4,6))
#This plots seasons and each year is in different color.
#But we need rows .... KobeBryant fieldGoals for his 10 year career

#And each row element (player) much be in different color

#How to change the matrix
#Transpose a matrix 
#What is that
#this allows you to convert rows into columns and vice-versa.

#How do you transpose a matrix
#use t() function
#syntax: t(matrix name)
t(FieldGoals)
#your matrix is transposed
#Now columns represent players

#So when using Matplot():
#Remember it plots columns one by one
matplot(t(FieldGoals),type = "b",pch = .0001, col = 1:10)
#pch stands for point characters
matplot(t(FieldGoals),type = "b",pch = 15:18, col = c(1:4,6))
#pch = 15:18  helps you get solid triangle, circle, square, diamond shapes.

#x-axis represents players- 1 to 10
#y-axis tells you about field goals by those 10 players

#Missing in plot?
#legends
#which player is no.1, no.2 and so on...
#use legend() function
#legend function goes on the existing chart created using matplot()

?legend()
#syntax: 
#legend("where you want the legend", inset = how far you want to be from bottom left, legend= whose index you want for legend  e.g. column headers, col=colors should be same as that of plot,pch=same as that of plot, horiz=FALSE (means you want vertical))
legend("bottomleft", inset = .01, legend = Players, col = c(1:4,6), pch = 15:18, horiz = F)

#legend() and matplot() are two different objects. so, if you supply different colors for each of these functions then your legend can be misleading
#you have to make sure that col(colors), pch and legend= players should be same as that used for the matplot()

#It a hassle to use two different function, isn't it?
#R has other convenient functions that we will explore, don't worry!!

#taking in to account the injuries
#fieldGoals/games = number of field goals per game
matplot(t(FieldGoals/Games),type = "b",pch = 15:18, col = c(1:4,6))
legend("topright", inset = .01, legend = Players, col = c(1:4,6), pch = 15:18, horiz = F)

#analyze accuracy (field goals/field goals attempt)
matplot(t(FieldGoals/FieldGoalAttempts),type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft", inset = .01, legend = Players, col = c(1:4,6), pch = 15:18, horiz = F)

#salary per point = how much they got paid for each point they scored

#point/minutesplayed = how many point they scored per each minute played

#
matplot(FieldGoals,type="b",pch = 15:18,col = c(1:4,6))
legend("bottomleft", inset = .01, legend = Seasons, col = c(1:4,6), pch = 15:18, horiz = F)

matplot(t(FieldGoals),type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft", inset = .01, legend = Players, col = c(1:4,6), pch = 15:18, horiz = F)

#don't use inset = 1, then your legend will not appear in the plot
#legend = column headers,
#matplot plotws 1st column and then plots 2nd column etc
#So each line in matplot represend a column.
#When using legend() with matplot(), legend = columnHeaders
#legend =Seasons. means columns headers are years 
#legend = players means columns headers are player names.

