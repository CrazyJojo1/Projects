#tibbles is built upon data frame
?tibble
#tibble() function is used to construct data frame
#they add some characteristics to data frame.

#tibble is data frame with add-ons

library(tibble)
#how to coerce an existing data frame into tibble
x <- 4
as.character(x)
#.............
data <- mtcars
#we will be using as_tibble() to coerce a data frame into tibble
data1 <- as_tibble(data)
View(data1)
#it removes the rownames

#R uses as. notation for coercion
#tidyverse use as_ notation for coercion

#..................
#how to tell if you are working with tibble or data frame.
#class() can tell whether you are working with tibble or data frame
class(data)
#ans "data.frame"
class(data1)
# "tbl_df"     "tbl"        "data.frame"

#benefit of using tibble
#tibble gives you nice print of data frame
#it just shows you 10 rows...good thing esp. when working with large data sets
data1
#print data frame instead in console
data
#entire data just is dumped on to your console.

#.......................
#creating tibble 
tibble(
  x=1:5,
  y=1, #y is not of the same length as x, but tibble will do it for you
  z= x^2 + y #you can use mathematical operations within tibble() using variables declared within tibble().
)

#let's create a data frame now
df <- data.frame(
  x=1:5,
  y=rep(1,times=5) #y is not of the same length as x, but tibble will do it for yo
)
#data.frame() doesnot allow mathematical operations

cbind(df, df$x^2+df$y)
#df$x^2+df$y, you are multiplying column df$x with df$x and then adding it with column df$y

#so tibble makes work easy

#.............column names with tibble
#you can use funny names as column names using tibble

tibble(
  `:)`="simile",#if you are using non-syntactic or variable name that are normally nor allowed... use back ticks ``(present under tilda top left corner)
    ` `="space",
  `2000`="number"
  )
#doing the same with data frmae
data.frame(
  `:)`="simile",#if you are using non-syntactic or variable name that are normally nor allowed... use back ticks ``(present under tilda top left corner)
  ` `="space",
  `2000`="number"
)
#data.frame changes the non-syntactic names into X.. and X.

#tribble allows you to create tibbles in row to row layout
?tribble
#used to make a quick data frame
tribble(
  ~x, ~y, ~z,"a",2,3.6,"b",1,8.5
)
#tibble package will recognize ~x, ~y, ~z  as column names because of tilda prefix
#"a",2,3.6 - are values for x,y,z and so on.

#good way to write it is 
tribble(
  ~x, ~y, ~z,
  #leaving space between colnames and values
  "a", 2, 3.6,
  "b", 1, 8.5
)

#so benefit of tribble() is to make example data sets

#..............another advantage of tibble package
#printing function
#lubridate is another package which makes working with date 
#and time much easier in R

#double colon (::) allows you to call a function within lubridate
lubridate::now()
#now() function gives you date and time
lubridate::today()
#today() gives you today's date
tb2 <- tibble(
  a=lubridate::now() + runif(1e3) *86400,
  b=lubridate::today() + runif(1e3) * 30,
  c=1:1e3,
  d=runif(1e3),
  e=sample(letters,1e3,replace=TRUE)
)
sample(letters)
?sample
#runif() generates random number from a uniform distribution
#runif(1e3) will generate 1000 random uniform distribution numbers


#understanding sample()
sample(c(1,2,3),4)
#here you have the vector c(1,2,3)
#and you want to sample just one number out of c(1,2,3)
#sample() will give you one random number from the sample.

#what if you want 4 random numbers
sample(c(1,2,3),4)
#this will not work as random number is not repeated.

#to allow repetition
sample(c(1,2,3),5,replace = TRUE)
#now repetition is possible.

View(tb2)

#................control your printing output
#this print parameter works only for tibble 
#and not for data frame.
print(tb2,n=5, width=5)
print(tb2,n=5, width=50)
print(tb2,n=5, width=100)
#this allows you to control the width of your printing

#if you want width to be as wide as possible, use width=Inf
print(tb2,n=19, width=Inf)


mtcars
mt <- as_tibble(mtcars)
print(mt,n=15,width=50)
