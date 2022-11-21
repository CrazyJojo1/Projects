
#which () gives you row number that meets the condition and 
#which () completely ignores NA values

#Filtering : using is.na() for missing data.

?is.na
head(fin,n=24)
#pickout missing values from the expenses column
fin[which(fin$Expenses == NA),]
#you get zero rows that meet the criteria
#why?
#you cannot compare anything with NA.....

#is.na()
#this functions checks if something is an NA.
is.na(fin$Expenses)
fin[is.na(fin$Expenses),]
fin[is.na(fin$State),]













