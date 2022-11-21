
x <- 1:3
x
length(x)
anyNA(x) #check any missing values
#indexation of vectors in R starts from 1 unlike 
#array (starts from 0)

names(x)
#names() function is used to check names 
#NULL means NA
names(x) <- c("a","b","c")
names(x)
#names are character vectors so use double quotations
a:j
letters
a <- letters
#letters is a vector pre-built in R that contains all alphabetical letters
letters["a":"j"]
LETTERS#Gives you all alphabetical letters in capitals

#get first three letters of an alphabet
LETTERS[1:3]
#Use [] for indexation

names(x) <- LETTERS[1:3]
x
#"A" "B" "C" are not vector elements, instead just indexation 
names(x) <- letters[1:3]
y <- c("b"=3,"d"=4,"e"=9)
names(y)
#naming from the get go... cool
y[b]
