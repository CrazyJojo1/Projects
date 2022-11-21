

#............sub() and gsub()
?sub
#they look for pattern and then replace it (x is where to look for the pattern)

#sub() - used to replace the first instance
#gsub() - used to replace all of the matches respectively

#since we need to replace , $ Dollars % space - so we will be using gsub()
#...................
head(fin)
#syntax for gsub()
# gsub(pattern,
#what you want to replace it with,
#where do we look for pattern)

#"", means replace it with nothing (empty)
fin$Expenses <- gsub(" Dollars","",fin$Expenses)
head(fin) #Dollars is removed

#replace the commas
fin$Expenses <- gsub(",","",fin$Expenses)
head(fin) #commas are removed
str(fin)

#revenue
fin$Revenue <- gsub("$","",fin$Revenue)
# above command will not remove the $
#why?
#R recognizes $ as special character....you use $ for data frame column, etc

#If you need to address the dollar sign ($) in its character meaning
#then you need to create an escape sequence

#how to create an escape sequence??
#use \\ before the dollar sign
fin$Revenue <- gsub("\\$","",fin$Revenue)
head(fin) # you successfully removed dollar sign

#remove commas
fin$Revenue <- gsub(",","",fin$Revenue)
head(fin)
str(fin)
#remove %
fin$Growth <- gsub("%","",fin$Growth)
head(fin)
str(fin)

#............now use as.numeric()
fin$Expenses <- as.numeric(fin$Expenses)
fin$Revenue <- as.numeric(fin$Revenue)
fin$Growth <- as.numeric(fin$Growth)
head(fin)
str(fin)
summary(fin)

#.....................
#creating a data frame
df<-data.frame(Column_1 = c('Florida','Germany','Georgia','Geniva','Istanbul','NewZealand','Australia'), Column_2=c(1,2,3,4,5,6,7))

#data frame
df
df1 <- gsub("G","A",df)

x <- "I love R. R is a statistical language"
gsub("R","R language",x)
sub("R","R language",x)
