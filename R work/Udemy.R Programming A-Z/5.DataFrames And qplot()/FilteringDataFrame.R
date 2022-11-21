

#Filtering Data Frames

#filter means looking at specific rows.

#filtering is more about rows

#look at first sex rows
head(stats)
#Look at internet users
stats$Internet.users
#Which countries have 'less than' 2% internet users?
stats$Internet.users < 2
#To do this you will use < operator. All values in vector, internet.users, are in percentage

#Since we are using logical operator (<), we get result in TRUE and FALSE.
count <- 0
for(i in 1:195){
  if(stats$Internet.users[i] < 2){
    count <- count + 1
  }
  }
count
#so we have 9 values in column 'Internet.users' that are less than 2%

#What is happening here?
stats$Internet.users < 2
#This gives you a logical vector containing 195 values. 
#By logical vector I mean TRUE FALSE values.... 
#it still is a vector containing 195 logical values

#You now know that we get a vector when we run 'stats$Internet.users < 2' operation

#What can we do with this??
#let's put this logical vector in an object
filter <- stats$Internet.users < 2
#our object name is filter

#What can we do with this filter?
#..............
stats[1:100,] #this will give you first 100 rows
stats[filter,]#this will give you rows that meet the filter condition
#filter has the same length as the data frame.
#And filter is a TRUE FALSE vector.
#Every time, row will have TRUE value, stats will display that row.

#......................
#you don't need to create an object every time you use a filter
#below is the example

#you want to look at birth rate over 40
stats[stats$Birth.rate > 40,]
#does these figures tells us...
#if more than 40 people are born per 1000 population, then this country's population are growing very quickly
#4 person per 100 people, 1 person per 25.

#............
#So using logical operators you can create filters.
#logical values fed as rows will only return TRUE values 

#.............
#When you have two conditions?
#birth. rate .40 and internet.users < 2 

stats[stats$Birth.rate > 40 & stats$Internet.users < 2, ]
#using & operator
#you can combine two conditions using &

#........
#In R, you use & as AND and | as OR. 
#In R, for equal to, you use == (double equal to sign)
#But for loops, let's say you need to use AND OR operator, 
#then you will use && ||.

#........
#What else can we do??
#let's go by Income group
#Income group is categorical variable
#meaning, it has 4 character values and that tells you about incomes of these countries

stats[stats$Income.Group == "High income",]
 levels(stats$Income.Group)

#............. Exercise............
 #Try to get all the information from your data from about Malta
 stats[stats$Country.Name == "Malta",]
 #Remember to use double quotations as Malta is a character 
 
 #Last thing these filters are applied to rows
 #dataframe[row,col]..... to look at specific cell
 #dataframe[row,]...... to look at an entire row
#since we are applying filters to rows
 #dataframe[filter,].......look at rows at meet filter condition











