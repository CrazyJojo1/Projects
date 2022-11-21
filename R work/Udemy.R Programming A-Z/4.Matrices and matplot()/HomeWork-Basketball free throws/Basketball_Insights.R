#Challenge
#analysing the trends of top 10 NBA players
#Their trends in performance
#When they were playing well
#when their stats dropped
#when they had injuries and why they haven't been playing


#This section we will cover matrices
#Matrices is a way to represent tables in R - one of the ways
#Matrices is also a stepping stone for data-frames.


#project brief
#Basketball Trends
#What is NBA
#national basketball association
#We will take top ten highest paid players from 2015-2016.
#We will be analyzing how these players have been playing over the past 10 years
#meaning using their data for the past ten years.
#We will conclude about their performance

#Goal for this challenge
#Investigate trends, patterns in their performance over the past 10 year period
#These players were not the best from the start.
#So, investigating them will help you know how their performance has been changing in the past
#which put them on that top 10 list.

#you don't need to understand much about Basketball.

#you will start from 2005-06 till 2014-2015

#headers
#GP - total games played in the season. e.g. if GP = 81 for 2008-09 means that player played 81 games for that year or season
#MPG- minutes per game - total minutes that player played in that whole season.

#FG% - field goals - how many basketball that player throw in the hoops during that season. What is the accuracy of that player
#e.g. FG% = .48 means out of 100 attempts, 48 when in the hoop

#we will derive actual number of field goals and number of field goal attempts.
#FG% = number of field goals /actual number of field goals attempted.

#PPG - points per game - number of scores that person has scored in that whole season per game
#But, we will build a table of total number of scores that person has scored in that season - not per game but for a season.

#Where do you get the data?
#www.superdatascience.com

#Note:
#Once that data is loaded in your Global Environment
#you can use that data in a new script.
#meaning - even if you don't work on the same script, its still could be put to your use.
#e.g. I am using data from s4-BasketballData.R file
#type salary
Salary
#you can see salary table in your console.

#That is the benefit of 'Global'-Environment.


#.........................
#analyzing NBA data

#last time we created our first function
myplot()
#arguments are missing


#first argument is compulsory as your function need to plot: so it needs data
#second argument, rows, is not compulsory as you have default values set for it.
#you don't provide info... R uses default values
#using myplot() based on different data available to us
myplot(Points)#total point scored by each player
myplot(Points/Games)#how many point scored per total games played
myplot(FieldGoals/FieldGoalAttempts)#tells about accuracy of each player
myplot(MinutesPlayed/Games)#total minutes played per total games
myplot(FieldGoals/Games)#goals scored per total games played
myplot(Games/Games)#mistake...Good for nothing
myplot(Games)
myplot(FieldGoals/MinutesPlayed)#total goals per total minutes
myplot(Points/FieldGoals) #no. of point scored per field goal

#field point rules in Basketball:
#within the arc- 2 point (there is also one point... that comes later in explanation)
#outside the arc - 3 point
#foul and player gets free throws - 1 point (within the arc)

#...................
#Insights - Focus is on Analytics and Data Science - Smart thought-through-way

#1. Salary
#...............
#how the salary of these players have been changing
myplot(Salary)
#use indexation to look at specific players
myplot(Salary,3)
#how much they got paid per game
myplot(Salary / Games)
#notice : of no. of games played are less, then Salary/games grows to a bigger number.
#KobeBryant 2014 salary is very high comparitively as he played less games
#Kobe was injured
#Salary is not affected by injuries as these players have contracts 

#But injuries can affect fieldgoals... number of goals scored.

#So it is best not to do:- myplot(Salary/Fieldgoals).
#Salary not affected by injuries, but fieldgoals affected by injuries.
#not a good metric to run!

#In-game metrics
#.................
MinutesPlayed
#number of minutes played by each player in each year
#What does Minute Played tells us?
#time spent on the field..Ok
#participation in the season .... so more field minutes can be compared with field goals.
myplot(MinutesPlayed / FieldGoals)
#or
myplot (FieldGoals / MinutesPlayed)
#LeBron's was consistently scoring high relatively on his per minute played
#ChrisBosh performed his worst in 2010.
#What skewing our analysis
#Injuries
#best performers, like Kobe, performed poor per Minutes played in 2013 due to their injuries

#How to take injuries out of our equation:
# how to fix that??
#Injuries affect all in-game statistics
#you don't attend a game, which means you also don't score any goals

#In-game matrix Normalized
#Normalize in-game matrix by in-game matrix
#What does that mean?
#Your in-game matrix are
FieldGoalAttempts
FieldGoals
Games
Points
#If I divide one of these matrix with another in-field non-similar matrix
#then I have in-game matrix / in-game matrix.
#how it would help.... in case of injuries?
#When player is injured, number of games played by him would be less.

myplot(FieldGoals / Games)
#Kobe used to had most field goals per game, 12 fieldGoals per game, but currently... Lebron takes the lead - scoring 9 fieldGoals per game.

myplot(FieldGoals / FieldGoalAttempts) #accuracy
#DwightHoward's accuracy was close to 60%.
#Kobe's accuracy stood close to 45% before his 2013 injury.
#LeBron's accuracy per attempt increased by more than 5 percent till 2013.

myplot(FieldGoalAttempts / Games) #Check how many attempts player make per game
#While DwightHoward accuracy was highest, his attempts per game is far less on relative scale....10 attempts per game.
#So, 6 field goals per game.
#Kobe's accuracy is 45%. His field attempts is close to 20. So, his accuracy is 9/20. 
#Kobe scored 9 goals per game...higher than DwightHoward.
#Now we get why Kobe is paid more than Dwight!

#Why Dwight scores less than Kobe?
#It may have something to do with his position in the field
#etc. etc.
#So it may require more of a domain knowledge (knowledge about Basketball)

#Lebron's attempts per game stands at 18... which is 9.9/20
#Lebron scored 9.9 goals per game
#What have we learned from here?
#Accuracy is not proportional to no. of field Goals per game.
#But you can use accuracy to understand how many field goals these players scored per game. 
myplot(Points / Games)
#...................
#Interesting Observation
myplot(MinutesPlayed / Games)
#MinutesPlayed by all these player is on decline per moving season.
#most player fall within the time range of 34-40.

myplot(Games)
#number of games overall by these player is pretty much the same. 

#So you cannot tell as to why MinutesPlayed per game is declining.
#That is what makes it interesting

#..........
#Time is valuable
myplot(FieldGoals / MinutesPlayed)
#.25 means 1 field goal per every 4 minute's played.
#.20 means 1 field goal per every 5 minute
#Kevin Durant is most consistent and up on this chart.
#higher time.. means he is using his time on the court valuable
#.................................
#Player's style
myplot(Points/FieldGoals)
#3 points means goals made outside the arc.
#Some score average above 3 points
#???
#3 point and above includes 3 points and free shots scored during game
#you would need to subtract free shots point from 3 points to get 3

#this may tell about their style?
#which player like to play within the arc and which just like to play outside

#Kevin Durant aimed for 2 points in 2005 and 2006, but later we see his style changed.










