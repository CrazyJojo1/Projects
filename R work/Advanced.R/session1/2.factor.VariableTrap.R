

#............factor variable trap (FVT)
#converting a factor into a non-factor 

#let's create a vector
a <- c("12","13","14","12","12")
a
b <- as.numeric(a) #explicit coercion
typeof(b)

#..........how to convert factors into numeric

#create a factor
z <- factor(c("12","13","14","12","12"))
#z is the factorized version
z
levels(z)

y <- as.numeric(z)
y
 #vectors have changed
#.............
typeof(z)
#z is an integer, but integer part of z is the factorization integer
#this means when R converts something into factors:
#it assign an integer to its category(levels)
#first level takes the value of 1
#2nd level takes the value of 2 and so on.
z <- factor(c("12","13","14","12","12"))
#12 =1, 13=2, 14=3
class(z)
#.............fix??
#step1: convert factor variable into a character vector
#step2 : convert character vector into numeric vector
y <- as.character(z)
c <- as.numeric(y)
c
#now values are the same.

rm(a,b,c,y,z)

#.........................FVT example
fin$Profit <- factor(fin$Profit)
fin$Profit
str(fin)

#convert profit factor into numeric
fin$Profit <- as.character(fin$Profit)
fin$Profit <- as.numeric(fin$Profit)
head(fin)
str(fin)
summary(fin)
