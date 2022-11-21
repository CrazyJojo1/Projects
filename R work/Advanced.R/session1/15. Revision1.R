
#Factor variable?
#a categorical variable that is often a character vector.
#to convert to a factor variable- use factor()
#use levels() to know the categorical names
a <- c("2009","2009","2010","2009","2010","2015")
a
a <- factor(a)
a
levels(a)
#factor variable trap 
#suppose you want to convert a factor into a numeric vector, then 
#you must first convert it into character and then into a numeric vector
b <- as.numeric(a)
b
#this is the reason,
#when you try to coerce a factor to numeric directly
#, then R will give you numeric vector, but it will use values that were assigned to those catergories

a <- as.character(a)
a
a <- as.numeric(a)
a
#now you get what you are looking for.

#to do explicit coersion: use as. function
as.character()
as.numeric()
as.integer()

#gsub() ans sub()
#both of these function are used to replace a string with an another string
x <- "R is the language. R is mainly for statistics"
#syntax
#sub("string to replace","what to come instead",name of the vector)
sub("R","R language",x)
x <- gsub("R","R language", x)
x
#sub() just replaces the first string 
#gsub() will replace all matched string

#for special character use escape sequence such as ("\\$","dollar",x), when replacing dollar sign with another string such as "dollar.

#Missing values
#R represents missing values in two ways
#NA
#empty cells
#What is NA?
#it is a logical constant of length 1
#In R, there are three logical constants:-
#TRUE
#FALSE
#NA
#na.rm = T, to remove NA values 
a
a <- c(a,NA,NA)
a
#a has two NA values
mean(a)
#because a has NA values, mean() will result is NA
#when you compare something with NA, so a function uses values that contains NA
#the result will always be NA
#solution??
mean(a, na.rm=T)
#you get the result

#how to deal with missing values in R
#1. look if you can derive the value
#profit is missing, but rev and expense is given
#2. use median imputation method:
#if you cannot derive a value, use median instead
#median is better than mean, why??
#median is not affected by outlier as it just takes the middle value of the provided sample
#3. Remove the cell entirely
#if cannot use the median and you don't mind eliminating some rows... delete those with missing values
#4. leave cell as it is
#if those columns containing missing values are not going to be used in calcualions.... leave them 
#5. two advanced techniques:
#a. use correlations and similarities
#b. Introduce dummy variable for "missingness"
#the 5th point is not covered in this revision

#locating missing values
#2 function
complete.cases()
#this function allows you to check if the row is complete
#complete means not containing missing values
!complete.cases()
#not operator allows you to find cells that contain missing values
!complete.cases(a)
#this gives you logical result
a[!complete.cases(a)]
a[complete.cases(a)]
#2. use is.na()
is.na(a)
#this function is very similar to !complete.cases()
#as it finds which values are missing
a[is.na(a)]
a[!is.na(a)]
#converting blank spaces to NAs
read.csv("file name",na.strings = c(""))
#this means you wish to replace empty cells c("") with NA

#which function
#it gives you the row number that contains the value
which(a==2009)
#1,2 and 4 the value is 2009
a
a[7] <- NULL
a <- a[complete.cases(a)]
a
b <- c(1:8,NA,NA)
which(b==5)
b[which(b==5)] <- 7
b
b[9] <- 10
b
#backup
#always prepare a backup
backup <- b
#...................................
getwd()
#importing data
rev <- read.csv("fortune.500.csv",na.strings = c(""))
#exploring data
head(rev)
rev[!complete.cases(rev),]
View(rev)
str(rev)
#creating factor varibles
rev$ID <- factor(rev$ID)
levels(rev$ID)
rev$Industry <- factor(rev$Industry)
rev$State <- factor(rev$State)
rev$Inception <- factor(rev$Inception)
str(rev)
summary(rev)
#avoiding factor variable trap
#converting revenue, expenses, growth into numeric vector
#step1 :- removing special characters and commas
rev$Revenue
rev$Revenue <- gsub("\\$","",rev$Revenue)
rev$Revenue <- gsub(",","",rev$Revenue)
#step2 : converting into numeric vector
rev$Revenue <- as.numeric(rev$Revenue)
#doing the same for Expenses column
rev$Expenses
rev$Expenses <- gsub("Dollars","",rev$Expenses)
rev$Expenses <- gsub(",","",rev$Expenses)
rev$Expenses <- as.numeric(rev$Expenses)
#doing the same for growth column
rev$Growth
rev$Growth  <- gsub("%","",rev$Growth)
rev$Growth <- as.numeric(rev$Growth)
#check
summary(rev)
#working on missing values
View(rev)
#...................................................
#using median imputation method
rev[!complete.cases(rev),]
#column 8 and 44...rev and expenses
#find median for revenue
rev[!complete.cases(rev$Revenue),]
rev[rev$Industry=="Construction",]
med.revenue <- median(rev[rev$Industry=="Construction","Revenue"],na.rm=T)
rev[is.na(rev$Revenue),"Revenue"] <- med.revenue
rev[c(8,44),]
#doing the same for expenses
rev[is.na(rev$Expenses),]
med.expenses <- median(rev[rev$Industry=="Construction","Expenses"],na.rm=T)
rev[is.na(rev$Expenses) & rev$Industry == "Construction","Expenses"] <- med.expenses
rev[c(8,44),]
#checking others where median imputation can be used
rev[!complete.cases(rev$Growth),]
rev[is.na(rev$Growth),]
med.growth <- median(rev[which(rev$Industry=="Construction"),"Growth"],na.rm=T)
rev[is.na(rev$Growth),"Growth"] <- med.growth
rev[8,]
#.....................................
#deriving values using formula
rev[!complete.cases(rev$Profit),]
rev[is.na(rev$Profit),"Profit"] <- rev[is.na(rev$Profit),"Revenue"] - 
                                   rev[is.na(rev$Profit),"Expenses"]
#check
rev[c(8,44),]
#9055058 - 4506976

rev[!complete.cases(rev),]
rev[!complete.cases(rev$Expenses),]
rev[is.na(rev$Expenses),"Expenses"] <- rev[is.na(rev$Expenses),"Revenue"] -
                                       rev[is.na(rev$Expenses),"Profit"]
#check
rev[17,]
14001180 - 11901180
#.....................
rev[!complete.cases(rev),]
#factual method
#convert state into character
rev$State <- as.character(rev$State)
rev[!complete.cases(rev$State),]
rev[is.na(rev$State) & rev$City == "New York","State"] <- "NY"
rev[is.na(rev$State) & rev$City =="San Francisco","State"] <- "CA"
#Check
rev[c(11,84,267,379),]
#..................................
rev[!complete.cases(rev),]
#before you remove rows.........create a backup
rev.backup <- rev
#..........................
#removing rows
rev <- rev[!is.na(rev$Industry),]
#check 
rev[!complete.cases(rev),]
#...............................................
#fixing employees column
#using median imputation method again
rev[!complete.cases(rev$Employees),]
#fixing row indexing.........................
rownames(rev) <- NULL

med.employee.retail <- median(rev[rev$Industry=="Retail","Employees"],na.rm = T)
rev[is.na(rev$Employees) & rev$Industry == "Retail","Employees"] <- med.employee.retail
#check 
rev[3,]
med.employee.finserv <- median(rev[rev$Industry=="Financial Services","Employees"],na.rm = T)
rev[is.na(rev$Employees) & rev$Industry=="Financial Services","Employees"] <- med.employee.finserv
#check
rev[c(3,330),]
rownames(rev) <- NULL
#see if any value is still missing
rev[!complete.cases(rev),]
#......................................
#visualization
plot <- ggplot(data=rev,aes(x=Revenue,y=Expenses))
plot + geom_point(aes(color=Industry,
                      size=Profit)) 

#..................
plot2 <- ggplot(data=rev,aes(x=Revenue,y=Expenses))
plot2 + geom_point(aes(color=Industry)) +
  geom_smooth(aes(color=Industry),
              fill=NA,
              size=2)
#...................
plot3 <- ggplot(data=rev)
plot3 + 
  geom_jitter(aes(x=Industry,y=Growth,color=Industry)) +
  geom_boxplot(aes(x=Industry,y=Growth,color=Industry),
               alpha=0.6,
               outlier.colour = NA)
