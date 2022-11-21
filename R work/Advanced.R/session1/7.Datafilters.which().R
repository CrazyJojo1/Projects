

#Filtering : using which() for non-missing data
head(fin)
#you want to get rows that have revenue of 9746272.
fin[fin$Revenue == 9746272, ]
#3 Greenfax   Retail      2012        NA    SC Greenville 9746272  1044375 8701897     16
#NA   <NA>     <NA>     <NA>      <NA>        NA  <NA>       <NA>      NA       NA      NA     NA
#NA.1 <NA>     <NA>     <NA>      <NA>        NA  <NA>       <NA>      NA       NA      NA     NA

#you get two rows that contain NA.
#??
#Data contains NA values and when you compare NA == 9746272
NA == 9746272
#you get an NA
#what else is R doing here??
#Not only it is returning NA for the values that are NA, it is converting those entire rows into NA
#why?
#this R does to eliminate confusion.
#since we are comparing if fin$Revenue column meets our condition,
#rest of the cells don't matter much to our comparison.

#................better way to filter 
which(fin$Revenue == 9746272)
?which 
#which will look through your column and will return only that has TRUE value
#best part : it will ignores NA and FALSE 

which()
#which() gives you row number that meets the condition
fin[3,]
#..............................
fin[which(fin$Revenue == 9746272),]

#pick out all the companies that have 45 employees
head(fin)
which(fin$Employees ==45)
#we get 10 row numbers

fin[which(fin$Employees ==45),] 
#this is similar to 
fin[c(5,137,183,200,208,245,360,380,435,487),]





















