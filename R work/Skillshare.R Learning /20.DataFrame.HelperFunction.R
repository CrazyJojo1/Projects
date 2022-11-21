
df <- data.frame(id = letters[1:10],x=1:10,y=11:20)
df
#...........shortcut
#ctl +2 : shortcut to move to console window
#ctrl +shift +1 : move to script window full screen , if 
#you press ctrl + shift +1 again... it will minimize the window
#...............
?data.frame

#helpful function are functions that allow you to explore data frame
head(df)
tail(df)
nrow(df)
ncol(df)
#rownames are not part of data set
str(df)
head(df,n=10)
tail(df,n=2)
View(df)
#View() function opens up the entire data frame in another tab.
#V is capital in view
dim(df)
#dim() gives you rows and columns
dim(mtcars)
dim(iris)

str(df)
str(iris)
str(mtcars)
names(df)
#names() returns the names of the columns
colnames(df)
rownames(df) <- NULL
rownames(df) <- letters[1:10]
rownames(df)

#you use apply family insead of for loops in R
lapply(df,class)
?sapply
sapply(df,typeof)
#sapply allows us to loop through each column of a data frame.
class(df$id)
class(df$x)

class() #when you use () next to a function, you are entering inputs for 
#function to return an output
class #just using the name of the function, without (), you are actually it as a parameter(input) instead.

sapply(df,length)
summary(df)

typeof(df$x)


