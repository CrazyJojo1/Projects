
#Up until now we have been using function, but 
#today we will be creating our own function

#What are we going to create a function for??

#This is what we used to create a subset visualization:
Data <- MinutesPlayed[1:3,]
#using data as the name of the matrix for easy manipulation
matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft", inset = .01, legend = Players, col = c(1:4,6), pch = 15:18, horiz = F)

#But every time we create a subset, we copy something 
#What do we copy
matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft", inset = .01, legend = Players, col = c(1:4,6), pch = 15:18, horiz = F)

#Only thing that changes is Data, a variable whose value we keep on changing based on our subset

#................
#How about we find a way to encapsulate this code 
matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft", inset = .01, legend = Players, col = c(1:4,6), pch = 15:18, horiz = F)

#This would minimize our work. 
#When I need to use that code, I will call a function

#Role of a function?
#functions are designed to encapsulate code that does something
#in just one object
#That object inside that function will have everything that a code needs.

#you just need to feed that function a parameter

#..................
#let's create a function
#A function that visualizes MinutesPlayed by different players

#A function will encapsulate below given code:
Data <-round(data[1,,drop=F],)
matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft", inset = .01, legend = Players[1], col = c(1:4,6), pch = 15:18, horiz = F)

#To create a function
#Syntax: function(){code that your function should run}
#this structure is similar to loops.

function(){
  Data <-round(data[1,,drop=F],)
  matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset = .01, legend = Players[1], col = c(1:4,6), pch = 15:18, horiz = F)
  
}
#this function is ready
#last thing left?
#Assign this function a name
myplot <- function(){
  
  Data <- MinutesPlayed[1,,drop=F]
  matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset = .01, legend = Players[1], col = c(1:4,6), pch = 15:18, horiz = F)
  }
#myplot is an object,
#This time instead of assigning a vector, matrix, etc. to an object, you are assigning it a function.

#run this function
#make sure you use () with your object name. 
myplot()

#let's say you wish to visualize second and third player
myplot <- function(){
  
  Data <- MinutesPlayed[2:3,,drop=F]
  matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset = .01, legend = Players[2:3], col = c(1:4,6), pch = 15:18, horiz = F)
}
myplot()

#...................function created

#But let's make it more flexible
#Why?
#Everytime you have to analyze different player,
#you have to change the player indexation within our function

#1st way
#Since we are analyzing different players and the only value that is changed is the indexation of player.
n <- 2:3
myplot <- function(){
  
  Data <- MinutesPlayed[n,,drop=F]
  matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset = .01, legend = Players[n], col = c(1:4,6), pch = 15:18, horiz = F)
}
myplot()

#2nd way
#use parameters
#how do we specify parameters for our function
#function(parameter name)
#function(rows)
#so all you have to do is to copy 'rows' in place where there is need for indexation
#this way you have the variable called rows
myplot <- function(rows){
  
  Data <- MinutesPlayed[rows,,drop=F]
  matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset = .01, legend = Players[rows], col = c(1:4,6), pch = 15:18, horiz = F)
}
myplot(rows)

#rows is our parameter
#value that you give to rows, the function will automatically
#look for that word - 'rows' and will replace it

#let's test this 
myplot <- function(rows){
  
  Data <- MinutesPlayed[rows,,drop=F]
  matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset = .01, legend = Players[rows], col = c(1:4,6), pch = 15:18, horiz = F)
}
#call this function with its parameter
myplot(1:5)
#dope!

#What is happening here?
#function is taking its parameter (1:5), which is a vector, and anywhere function see
#a word 'rows' in its body, it will replace it with the value of that parameter.

#now just change that parameter and keep the function as it is
myplot(1:10)

#...................
#Using same function to visualize other data sets.
#right now, the only data set we are visualizing is MinutesPlayed.

#and each time we have to alter our functions to work around it.
#just like below:
myplot <- function(rows){
  
  Data <- Games[rows,,drop=F] #changing MinutesPlayed to Games
  matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset = .01, legend = Players[rows], col = c(1:4,6), pch = 15:18, horiz = F)
}

#let's fix that

#Create another parameter
#And because it comes first in the Body of the code, let's put it first
myplot <- function(data, rows){#data is the parameter passed to the function
  
  Data <- data[rows,,drop=F] #changing Games to data
  matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset = .01, legend = Players[rows], col = c(1:4,6), pch = 15:18, horiz = F)
}

#let's execute this function to create this function
#print in console
myplot(Games,1)
myplot(MinutesPlayed,1:5)
myplot(Salary,1:10)
#now your function has two parameter- myplot(data, rows)
#remember you arrange your parameter based on where those parameters are in your code
#if parameter comes early in the code, then place it first
#and parameter that comes later, place it second .

#let's say you want to add another parameter
#you want to choose specific years for chosen players
myplot <- function(data, rows, columns){#data is the parameter passed to the function
  
  Data <- data[rows,columns,drop=F] #changing Games to data
  matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset = .01, legend = Players[rows], col = c(1:4,6), pch = 15:18, horiz = F)
}
#excecute this function to create it

#let's put to use
myplot(Salary, 1:5, 6:10)
myplot(Salary,1,)

#........................
#Final bit
#set a default parameter

#When we are using functions... most of them have default parameters already
#e.g. Drop parameter in indexation.
a <- Salary[1,] #a subset of matrix named Salary
#But this subset is not a matrix... it is a vector
is.matrix(a) #FALSE
is.vector(a) #TRUE
#This happens because of default parameter

#..........how to add default values
#e.g. default values for row parameter is 1:10
#This means if user doesn't pass any value for rows, function assumes default values
myplot <- function(data, rows = 1:10, columns){#adding default value for row parameter
  
  Data <- data[rows,columns,drop=F] #changing Games to data
  matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
  legend("topleft", inset = .01, legend = Players[rows], col = c(1:4,6), pch = 15:18, horiz = F)
}

#pass no values... function takes default values
myplot(MinutesPlayed,)
#or
myplot(MinutesPlayed)

#pass values, default values are ignored
myplot(MinutesPlayed,1)

#you can use matrix operation inside these function
#Check accuracy 
myplot(FieldGoals/FieldGoalAttempts,1:2)
#Kobe accuracy is better than JoeJohnson on average.

myplot(MinutesPlayed/Games, "LeBronJames")
#here name in your legend is missing
myplot(MinutesPlayed/Games, 3)
#name in your legend is back as expected

#This is how you make your function flexible










