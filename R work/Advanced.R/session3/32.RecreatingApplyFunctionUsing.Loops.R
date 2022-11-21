#use shift + command + N to open a new script

#how to use loops to do the same what we so with Apply Function
Chicago

#find the mean of every row 
#do it using Apply function
apply(Chicago,1,mean)

#Do with using function
Chicago[1,]
class(Chicago[1,]) #it is a numeric vector
mean(Chicago[1,])
mean(Chicago[1:5,])
mean(Chicago["AvgHigh_F",])
annual_average <- function(i){
  mean(Chicago[i,])
}
rownames(Chicago)
annual_average("AvgHigh_F" )
annual_average("AvgPrecip_inch")
#..............

#Do it using loops
output <- NULL #here you are creating an empty vector
for(i in 1:nrow(Chicago)){
  output[i] <- mean(Chicago[i,])
}
output
#using nrow()
#why?
#here we know that we are working with five parameters
#But for bigger sample, it is best to have something like nrow(), 
#which adjust itself when you add more observations to your existing data

#give output column names
names(output) <- rownames(Chicago)
output
#...............
apply(Chicago,1,mean)
#Conclusion:
  #When we use apply function is way better, less lines and faster.

#Note:
#Apply functions replaces the need for creating loops.
#you can achieve same results as that obtained using loops with the apply functions.
#And as we last covered... apply family itself is huge. There are 8 + functions 
#that come under this umbrella term.


#A side-note:
#understanding what is happening in the background when you use apply functions:-
#When applying apply functions to your object.... think 
#about how your loop will look like













