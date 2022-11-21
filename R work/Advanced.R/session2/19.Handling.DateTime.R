# More Data Preparation

#...............Handling Date-Times in R

#You must know what data format is used for the data
#e.g. is it European date format  - DD/MM/YYYY
#or is it American date format - MM/DD/YYYY

#to get that answer.... you need to look at entire data set
head(util$Timestamp,50)
tail(util$Timestamp,50)
#based on last rows ..... it is DD/MM/YY (European Format)

#This data set made it easy for us... But what if we have limited set of dates
#how to identify the format then???

#In R, there is universal type of format to remove this confusion
#And it is called POSIXct (/po-six-ct/)
?POSIXct
help(POSIXct) #you can also use help() to open the help window
#Date-Time Classes
#POSIXlt(/posix-lt/) and POSIXct
#"lt" stands for local time and "ct" stands for calendar time

#What is POSIX?
#it stands for portable operating system interface.
#it allows compatibility between operating systems

#So it is a standard for many things...not just for dates

#POSIXct is a standard for time
#it measure time and then stores time 
#as the number of seconds that passed from the start of the year 1970
#which means POSIXct gives you an integer vector (seconds, minute are numeric vectors)

#so you can say that POSIXct is a integer data-type
#...........................
#..................converting 'Timeline' into POSIXct 
#(as present timeline is arbitrary)

#explicit coersion
#SYNTAX :
#POSIIXct(object, format ="",tz="")
as.POSIXct(util$Timestamp, format = "%d/%m/%y %H:%M")

#LMT is the timezone where I am currently and 
#it stands for local mean time
#IST stands for Indian Standard Time

#lets add another column to your existing data frame
util$PosixTime <- as.POSIXct(util$Timestamp, format = "%d/%m/%y %H:%M")
#2016-09-01 11:00:00 is year-month-date hour:minute:seconds

#check data frame
summary(util)
head(util,12)

#TIP: how to rearrange column in a data frame
util$Timestamp <- NULL

#Change the location of PosixTime to the very left
#SYNTAX : util[allrows,vector with rearraged order]
util <- util[,c(4,1,2,3)]
#check 
head(util,12)










