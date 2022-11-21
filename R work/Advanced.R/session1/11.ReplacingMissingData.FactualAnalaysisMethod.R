#Factual analysis method: 
#This method allows you to fill missing values with 100% certainty.

#if State is missing, but you know the city
#if Profit is missing, but you know revenue and expenses
fin[is.na(fin$State),]

#...............................1st way (using loops)
for(i in 1:nrow(fin)){
  if(fin$City[i] == "New York") {
  fin$State[i] <- "NY"
  }else if(fin$City[i] == "San Francisco"){
    fin$State[i] <- "CA"
  }
}
#check
fin[c(11,377,82,265),]
#..........................

fin[fin$City=="New York",]
fin <- fin.backup
fin
fin <-fin[!is.na(fin$Industry),]
rownames(fin) <-NULL
#...................

#...................................2nd way (using rownames and column name)
fin[is.na(fin$State),]
fin[c(11,377),"State"] <- "NY"
fin[c(82,265),"State"] <- "CA"
#check
fin[c(11,377,82,265),]

#.....................................3rd way (Best way out of three)
fin[is.na(fin$State),]
fin[is.na(fin$State) & fin$City == "New York",]
fin[is.na(fin$State) & fin$City == "New York","State"] <- "NY"
fin[is.na(fin$State) & fin$City == "San Francisco","State"] <- "CA"
#check if states are what we want
fin[c(11,377,82,265),]
#now missing values will contain have those rows
fin[!complete.cases(fin),]




















