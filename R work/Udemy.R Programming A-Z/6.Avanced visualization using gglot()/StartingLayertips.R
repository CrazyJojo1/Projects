
#...........Aesthetics again
#this time we will talk about how to strategically attack your chart creation



#import data frame
movies <- read.csv("Homework6/MovieRatings.csv")
#print data frame in console
movies
str(movies)
#fix the column names
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating","BudgetMillion", "ReleaseYear")
#print colnames in console
colnames(movies)
#get summary
summary(movies)
#get structure
str(movies)
#convert Genre and ReleaseYear into factors
movies$Genre <- factor(movies$Genre)
movies$ReleaseYear <- factor(movies$ReleaseYear)
#check structure
str(movies) #now Genre and ReleaseYear are categorical variable
#get summary
summary(movies)
#................................
..............#Starting Layer tips
#activate ggplot2
library(ggplot2)
#create an object  
t <- ggplot(data=movies, aes(x=AudienceRating))
#add geometry layer on top of this object
t + geom_histogram(binwidth=10,fill="White",color="Blue")
#fill parameter add color to the body, 
#color parameter adds to the borders

#................2nd way
#What other way could we achieve this same plot
t <- ggplot(data=movies)
t + geom_histogram(binwidth=10,aes(x=AudienceRating),
                   fill="White", color="Blue")
#We are achieving same result
#only difference, 
#instead of adding aes() in "t", we did that in geom_histogram()

#.............which way is better????
#2nd adds additional flexibility
#you are create multiple charts using same object(t), 
#without the need to override it

#this flexibility could came as an advantage when
#you are exploring the data... when you don't know 
#what you want from it

#let's see 
t + geom_histogram(binwidth=10,aes(x=CriticRating),
                   fill="White", color="Blue")
#you just change Audience to Critic and that's it
t + geom_histogram(binwidth=10,aes(x=BudgetMillion),
                   fill="White", color="Blue")
#change CriticRating too BudgetMillion....simple!!

#So 2nd way is better than the 1st way
#why?
#you could save time without the need for overriding

#......analysing histograms
#AudienceRating
#majority of Audience ratings fall between 35 and 85
#mean is close to 55
#and this is normal distribution: meaning most ratings will be around the mean.

#CriticRating
#this is not a normal distribution
#This is more uniformly distributed
#This may come from the fact that Critics are professional
#their ratings has objectivity to it, 
#you analyse the content and without being biased, they rate movies

#..................3rd way
#creating a skeleton plot
 t <- ggplot()
 #used very rarely
 #used when you want to create a plot
 #but you wish to use 'different data' sets on that plot

#so t is completely empty
 #now add data in your 2nd layer
 t + geom_histogram(data=movies,binwidth = 10,
                    aes(x=AudienceRating), fill="white",color="Blue")

#now if you wish to add a 3rd layer that uses different data...maybe you can try that
 #this will remove the need to override data in base layer
 

 #Conclusion:
 #all three methods yields the same result
 #choose that method that prevents over-riding and  
 #gives you flexibility 










