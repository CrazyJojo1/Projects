getwd()
#Changing working directory to import data
setwd("./Advanced.R/Weather Data")
getwd()
#importing data
Chicago <- read.csv("Chicago-F.csv",row.names = 1)
?read.csv
Houston <- read.csv("Houston-F.csv",row.names = 1)
NewYork <- read.csv("NewYork-F.csv",row.names = 1)
SanFrancisco <- read.csv("SanFrancisco-F.csv",row.names = 1)
##Check imported data
Chicago
Houston
NewYork
SanFrancisco
#form a list named weather
Weather <- list(Chicago = Chicago,
                Houston = Houston,
                NewYork = NewYork,
                SanFrancisco = SanFrancisco)
#check the list
Weather
#nesting for loop
#A table showing the annual maximums of each observed metric for every city.
max(Chicago[1,])
max(Weather$Chicago[1,])
max(Weather[[1]][2,])
Weather[[1]][1,2]
#try for loop
#.......................................create a matrix (similar result to sapply())
#step1 :initialisation
y <- matrix(nrow=4,ncol=5)

#step2 : nesting loops

for(i in 1:4){

  for(j in 1:5){
    y[i,j] <- max(Weather[[i]][j, ])
    
  }

}
y

#add rownames and colnames
rownames(y) <- names(Weather)
colnames(y) <- rownames(Chicago)
#check the names
y
#.......................comparing it with sapply
s <- sapply(Weather, apply, 1, max)
s
#..............................................................
#Create a list
y <- matrix(nrow=4,ncol=5)

#step2 : nesting loops
x <- list(0,0,0,0)
for(i in 1:4){
  
  for(j in 1:5){
    x[[i]][j] <- max(Weather[[i]][j, ])
    
  }
  
}

x
#add names
names(x) <- names(Weather)
#..........................................
#use lapply 
#compare
z <- lapply(Weather, function(a) apply(a,1,max))
z[1,]
