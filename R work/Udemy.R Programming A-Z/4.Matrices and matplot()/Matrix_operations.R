#

#let's see what sort of matrices are at our disposal
Games
#rownames = player names
#colnames = years
#you have 10 x 10 matrix
#Games matrix tells us about the number of games played by these 10 players in each of the presented year.

#It is a named matrix - meaning it got row and column names.
rownames(Games)
colnames(Games) #all years are characters... in double quotations.

#use identifier function to check something
#how many games LeBron James played in 2012
Games["LeBronJames","2012"]
#ans is 76

#.............
#matrix operations

#In vectors we could conduct mathematical operations - add, subtract, multiply, and divide etc.
a <- c(1,2,3,4,5)
b <- c(5,6,7,8,9)
a*b
a/b
a+b
a-b

#Can we do the same for matrices??
#You can

#For division of vectors, you need two vectors
 
#For division of matrices, you need two matrix.
FieldGoals
Games
#you wish to calculate number of field  per games
#field goals/no. of games will give you goals scored by player per game
NumberofGoals.game <- round(FieldGoals / Games,1)

#check how many goals LeBron James scored per game in his 76 games he played in 2012
NumberofGoals.game["LeBronJames","2012"]
#ans- 10.1 is the average score of LeBron.

#Rule for mathematical operation 
#1. Matrices need to be of same size and same data type.

#Let's check other data
MinutesPlayed
#number of minutes each player played per game.

#dividing MinutesPlayed by Games gives you how many minutes each player played per game
MinutesPlayed / Games
#rounding off the results
Minutepergame <- round(MinutesPlayed / Games,1)
Minutepergame["LeBronJames","2012"]
#we can say: In year 2012, on average, LeBron scored 10 goals in 37.9 minute. 

#Check the accuracy of each player
#number of field goals/field goals attempted
FieldGoalAttempts
FieldGoals
#division operation and round function
Accuracy <- round((FieldGoals/FieldGoalAttempts)*100,1)

Accuracy["LeBronJames","2012"]
# What does 56.5 means
#out of 100 goals, he score 56 goals on average.
#little more than 50%

#Salary per game
Salary
Games #Total games per year
Salarypergame <- round(Salary/Games, 1)
Salarypergame["LeBronJames","2012"]
#His salary in year 2012 per game on average is 2,30,855
Salarypergame["LeBronJames","2011"]
#His salary was 2,58,427. This number is greater than what we saw for year 2012
Salarypergame["LeBronJames","2005"]
#In 2015, he was much of an average player... less in demand!!

A <- c(1:20)
M1 <- matrix(data = A, nrow = 4,ncol = 5)
M2 <-  matrix(data = A, nrow = 4,ncol = 5,byrow = TRUE)
M1
M2
round(M1/M2)













