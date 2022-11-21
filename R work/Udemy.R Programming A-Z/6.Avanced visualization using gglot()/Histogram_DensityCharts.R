 
#today we will be studying some new geometeries
#e.g. histogram and density charts
#And histogram is also part of statistics

str(movies)
#create a new object
s <- ggplot(data=movies, aes(x=BudgetMillions))
#for histogram - You study frequency distribution of a single variable

#adding 2nd layer on top of s
s + geom_histogram()
#you can set bin-width as well
s + geom_histogram(binwidth = 10)

#...........................revision
#summary(movies)
#27 bins
#0-27,27-54,54-81...
count <- 0
for(i in 1:529){
  if(movies$BudgetMillions[i] > 20 && movies$BudgetMillions[i]<30){
   count <- count + 1
    print(count)
 }
}
#so bin width = 10 meaning
#0-10, 10-20,20-30 and so on...
frequency <- function(n1,n2){
  
  count <- 0
  for(i in 1:529){
  if(movies$BudgetMillions[i] > n1 &&
     movies$BudgetMillions[i] < n2){
    count <- count + 1
    print(count)
    
   }
}
}
rm(count)
frequency(21,30)

#.........................endofrevision

#for histogram ...you just need x-axis
#y-axis is part of statistics
#it is where R is calculating on behalf of you
#R first decides bins for you and
#later it is calculating values that fall in those bins.

#what do you see in this histogram??
#Most movies have a lower budget, somewhere between 0-30

#how to add color to histogram
#let's say you want to map the color to Genre

s + geom_histogram(binwidth = 10, aes(color=Genre))
#here mapping is successful but color is added just to the borders
#just on the border...body remains black 
#????
#but before that let's understand setting
#...........setting
s + geom_histogram(binwidth = 10, fill="Green")
#use fill parameter instead of color to add color to histogram
s + geom_histogram(binwidth = 10, color="Green")
#if you use color parameter, then it adds color, no doubt,
#but it adds color to the borders and not to the body

#..............mapping
s + geom_histogram(binwidth = 10, aes(fill=Genre))

#so color is the outline and fill is the color of the body/boxes

#............so now you know why color parameter is not used
#But there is still one problem??
#looks like color are merging into each other
#fix??
#add borders
s + geom_histogram(binwidth = 10, aes(fill=Genre),color="Black")
#so here, we are mapping and setting at the same time
#Since we are setting the borders to black... 
#don't put color parameter inside aes() function.

#this is chart number 3

#........................density charts
#these charts illustrates probability density chart
s +geom_density(aes(fill=Genre))
#since genre wise, these charts are on top of each other,
#we need to create a fix
#add position parameter
s +geom_density(aes(fill=Genre),position = "stack")
#now these charts are not over-lapping
#instead each chart is stacked on top of each other



