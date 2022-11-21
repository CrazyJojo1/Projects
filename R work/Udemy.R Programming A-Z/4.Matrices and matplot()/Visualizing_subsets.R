
#It's use sub-setting to analyze specific data of a matrix

matplot(t(MinutesPlayed),type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft", inset = .01, legend = Players, col = c(1:4,6), pch = 15:18, horiz = F)

#let's say you want to subset it
Data <- MinutesPlayed[1:3,]
#using data as the name of the matrix for easy manipulation
matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft", inset = .01, legend = Players, col = c(1:4,6), pch = 15:18, horiz = F)

#converting minutes into hours

data <- MinutesPlayed/60
Data <-round(data[1:3,],)
matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft", inset = .01, legend = Players[1:3], col = c(1:4,6), pch = 15:18, horiz = F)

#analysing KobeBryant by himself
data <- MinutesPlayed/60
#make sure your subset is a matrix.
#to convert a single array of data inot matrix, you use drop parameter
Data <-round(data[1,,drop=F],)
matplot(t(Data),type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft", inset = .01, legend = Players[1], col = c(1:4,6), pch = 15:18, horiz = F)
#this lets us know when this player was injured. As per this data, Kobe was injured in 2013 and in 2014, he was in his recovery phase.


#benefit of subsetting 
#how square bracket can add specificity to your analysis.




















