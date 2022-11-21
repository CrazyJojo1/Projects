
#.....Plotting with layers  
#we will see how you can layers geometries on 
#top of each other

#what plotting with layers actually mean in R

#every time you have to add a layer, you use + sign
ggplot(data=movies,aes(x=CriticRatings, y=AudienceRatings,
                       color=Genre, size=BudgetMillions)) 
+ 
  geom_point()
#notice that plus sign,
#you are literally adding it to the object you are creating

#so every layer create an object
#what does that mean? Create an object....
ggplot(data=movies,aes(x=CriticRatings, y=AudienceRatings,
                       color=Genre))
#this is a blank plot.... you just have x-axis and y-axis
#data is missing

#then you add geometry layer to it.
ggplot(data=movies,aes(x=CriticRatings, y=AudienceRatings,
                       color=Genre, size=BudgetMillions)) + 
  geom_point()
#this gives you a scatter plot
#creating an object
p <- ggplot(data=movies,aes(x=CriticRatings, y=AudienceRatings,
                            color=Genre, size=BudgetMillions)) 
  
p
#so you have created an object
#this contains data
#so data is physically copied into the object
#so every time you change the data and store the change in global environment,
#make sure you refresh your plot after that

#so from here on, we are going to work with layers
#layers are objects
#p is a layer of our plot
p + geom_point()
#this gives us another object
#p is the foundational layer... it got ggplot() and data, and aes() and mapping
#now we added additional layer on top of object p

p + geom_line()

#multiple layers
p + geom_point() + geom_line()
#here you cannot see the points as line is over them
p + geom_line() + geom_point()
#now we can see the points as points are over the lines

#concept of ggplot()
#you add one layer on top of another and so on..

#in other words, you are placing one object over another.
#so based on the order of objects, the outcome may vary












