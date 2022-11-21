
#..............what is NA?
#missing values in R are represented using NA
NA
?NA

#Just like TRUE and FALSE (2 logical constants), NA is also 
#a logical constant of length 1
length(NA)
#LOGICAL CONSTANT
TRUE 
FALSE
NA

#Q: Does he owns a car?
#three potential answers to that question:
#yes, (TRUE)
#no, (FALSE)
#I don't know (NA)

#This is the logic behind NA. 
#most questions can have three values (true, false and NA) - three valued logic

TRUE == FALSE
FALSE == FALSE
FALSE == 0
NA == TRUE #answer is NA.
15 == NA
NA == NA
#when you compare a missing value with something, answer will be NA.

x <- c(1,2,3,4,NA,7)
mean(x,na.rm=TRUE)















