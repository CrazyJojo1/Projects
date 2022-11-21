

#Missing values in R are represented by "NA".
#NA , in capital 
?NA
#NA stands for missing values
x <- NA
class(NA)
#so NA is a logical of length 1
#you can change the data type
y <- as.integer(x)
class(y)
rm(x)
rm(y)
x <- c(1,NA,2,5,NA,7)
is.na(x) 
#is.na() is a generic function that tells what values in a vector
#are NA.
#it gives ouput in logical format.
#TRUE value means it is NA.
is.na(x) <- c(3,9)
is.na(x)
x
#you can also use is.na() to put missing values in a vector
#matter of fact- it will replace existing values in to NA.
#conclusion:
#NA stands for missing values in R
#NA is the representation of absence of a value.
#so NA is not considered a type
x <-c(2,NA)
#you are not breaking the rule(vector needs to be of same data type)
#NA has no type
#is.na() gives logical output and can tell which values are NA
#is.na() can also be used to assign NA to existing values or add additional NA values to a vector

y <- c(0.5,NA,0.7)
z <- c(F,F,NA)
a <- c("a","b","c",NA,"d",NA)

#if the imported data may containing missing values
#so how to deal with missing data is a whole another topic.
#you deal with them during pre-processing before we actually start training your models.

#also imported data may not use NA in place of missing values, which R will run an error
#you using import function, you can replace the space with NA

#how do you test to see if a certain vector has a missing value
is.na(a)
#is.na() returns TRUE if there is NA 
#to test if the whole vector contains any NA
anyNA(x)
#anyNA() tells whether the whole vector contains any missing value

#anyNA() is esp. useful when working with large data sets.










