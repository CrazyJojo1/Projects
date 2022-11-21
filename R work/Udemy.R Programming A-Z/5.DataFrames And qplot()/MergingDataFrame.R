

#This session is about mergine two data frames in one
#1st data frame = stats
#2nd data frame = mydf

#we need to put mydf into stats

#........................Merging

#look at the top rows of each data frame
head(stats)
head(mydf)

#tips :
#look for similar columns
#both data frames have country name and code in common....
#it is best to use code instead of country's name. 
#names are long and spelling mistakes are easy to happen


#We will give a command ...match the row by country name

#using function merge()
#merge(name of the data frame which you want on the left, 
#data frame which you want on right side,
#how exactly we want to match those two data frames(by.x=column from first data frame),
#by.y = similar column in 2nd data frame)
#x is the data frame on the left
#y is the data frame on the right

merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code")
#country.code and code variables have exact same data frame.

#type merged in console
merged
summary(merged)
str(merged)
#remove the duplicate column
merged$Country <- NULL
summary(merged)
str(merged)
#visualizing the data frame.
#finally plotting by mapping it against country's region
qplot(data=merged, x=Internet.users, y=Birth.rate, color=Region, size=I(5) )















