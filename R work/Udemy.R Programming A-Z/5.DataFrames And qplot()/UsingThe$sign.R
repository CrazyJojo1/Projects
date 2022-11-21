
#the dollar sign

# $ sign is an operator 

#let's look at our data
stats
#use function to explore the data
head(stats)
#just like we use to use indexation in matrix to extract specific cell 
#we need to do the same for a data frame

#let's see you need to select the birth rate for a country(Angola)
#Angola is 3rd row and birth rate is in 3rd column
stats[3,3]
#same format as that for a matrix

#use colnames
colnames(stats)
#use colnames for indexation
stats[3,"Birth.rate"] #names are characters... so use double quotations
#check rownames
rownames(stats)
#row names are 1,2,3,4,5.............194,195.
#we cannot use country name- "Angola" 
#we cannot type something like:
stats["Angola","Birth.rate"]
#NA, value not found

#In data frame, row_names are numbers, col_names are names of variables.

#.................
#What is a dollar sign?
# $ sign is another way to access a data in your data frame
stats$Internet.users
#this gives you a vector elements of a numeric vector (Internet.users).
#this is similar to you selecting an entire column in a matrix
stats[,4]
stats[,"Internet.users"]

#But using $ operator, you can take it one step further, you can use it to 
#get specific value in that column
#Get a specific value from that vector.
stats$Internet.users[2]
#This gives you second vector element of Internet.users.

#you don't use $, dollar operator, in a matrix.

#.........another application of a $sign that was available in old versions of R.
str(stats)
#for example if you wish to know the values used to categorize data
#e.g. "High Income", "low Income", "upper middle income", "lower middle income"

#you can use levels() function....... 
#syntax: levels(table_name$col_name)
levels(stats$Internet.users)
#no levels for this
levels(stats$Income.Group)
#NuLL
#What you would have got in old versions:
#"High Income" "low Income" "upper middle income""lower middle income"














