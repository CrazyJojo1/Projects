#importing data
?read.csv
getwd()
Chicago <- read.csv("Chicago-C.csv",row.names=1)
is.data.frame(Chicago)
Houston <- read.csv("Houston-C.csv",row.names=1)
NewYork <- read.csv("NewYork-C.csv",row.names=1)
SanFrancisco <- read.csv("SanFrancisco-C.csv",row.names=1)
#convert data.frame into a matrix
Chicago <- as.matrix(Chicago)
Houston <- as.matrix(Houston)
NewYork <- as.matrix(NewYork)
SanFrancisco <- as.matrix(SanFrancisco)
#A table with annual averages of each observed metric for every city. - 

#Create a list
Weather <- list(Chicago=Chicago,
                Houston=Houston,
                NewYork=NewYork,
                SanFrancisco=SanFrancisco)
#Annual average for every city for each parameter
#rowMeans
lapply(Weather,rowMeans)
sapply(Weather,rowMeans)
sapply(Weather, function(a) round(rowMeans(a),2))
#A table showing : How much temperature fluctuates each month from min to max.(in %)

#Since it is in % it means it is change in temperature w.r.t. min. temp.
sapply(Weather, function(a) round((a[1,]-a[2,])/a[2,],digits=2))
#A table showing the annual maximums of each observed metric for every city.
apply(Chicago,1,max)
lapply(Weather, apply, 1, max)
lapply(Weather, function(a) apply(a,1,max))
sapply(Weather, function(a) apply(a,1,max))
# A table showing the annual minimums of each observed metric for every city.
sapply(Weather, apply,1,min)
#A table showing in which months the annual maximums of each metric were observed in every city 

apply(Chicago,1,which.max) #which() gives you indexation
lapply(Weather, apply,1,which.max)
#But we need names
lapply(Weather, function(a) apply(a,1,function(x) names(which.max(x))))
#what is happening here?
apply(Weather$Chicago,1,names(which.max))
names(which.max(Weather$Chicago[1,]))
#2nd way
sapply(Weather, apply,1,function(a) names(which.max(a)))
