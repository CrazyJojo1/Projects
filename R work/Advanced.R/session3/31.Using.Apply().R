#Using Apply() function
#What is apply()
?apply
apply(X,Margin,FUN,...)
#X is the name of the object on which you want to apply function
#Margin is to tell Apply function ...whether it is the row operation or column operation
#Fun is the name of the function e.g. mean, sum or median, etc.
#... means the optional agruments if needed by the supplied function.

#Margin
#1 = row operation
#2 = column operation

#....................
Chicago
#find annual average for each of the given parameters
apply(Chicago,1,mean)
#best to check or verfiy the results
mean(Chicago[1,]) #this gives you the mean for the AvgHigh_F
#results do match... Ok
#.................
#let's just analyze one city
#what else functions we can apply
#we need to calculate the max and the min
#find max
apply(Chicago,1,max)
#Check 
max(Chicago["DaysWithPrecip",]) #results do match
#find min
apply(Chicago, 1, min)
#check
min(Chicago["AvgPrecip_inch",]) #results do match
#............using loops to find the min for
results <- vector(mode = "numeric",length=5L)
for(i in 1:5){
  results[i] <- min(Chicago[i,])
}
#print result
results
#....................below is the useless exercise, but done for to practice operation on columns
#just for practice : We will look for maximum in each column
#it will not make sense to calculate January mean, max and min. But still for practice purpose
#for column : Margin = 2
apply(Chicago,2,mean)
apply(Chicago, 2, min)
apply(Chicago, 2, max)
#....................................................Our Project
apply(Chicago,1,mean)
apply(Houston,1,mean)
apply(NewYork,1,mean)
apply(SanFrancisco,1,mean)
#In order to form the table, you can use cbind() function 
X_1 <-cbind(Chicago = apply(Chicago,1,mean),Houston = apply(Houston,1,mean),NewYork = apply(NewYork,1,mean),SanFrancisco = apply(SanFrancisco,1,mean))
#see your table
X_1
#why use cbind()
#it takes the vectors and arrange them column-wise
#each vector is a row in itself 
#so cbind() converts those rows into columns and then bind them together

#..................
#there are better ways to create a table them using cbind().
#will be covered further down the course

#

























