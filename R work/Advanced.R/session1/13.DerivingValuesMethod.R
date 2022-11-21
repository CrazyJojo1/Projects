#using factual analysis method:
fin[!complete.cases(fin),]
fin[is.na(fin$Expenses),"Expenses"] <- fin[is.na(fin$Expenses),"Revenue"] - fin[is.na(fin$Expenses),"Profit"]
#check 
fin[15,]
#..............Profit
fin[is.na(fin$Profit),]
fin[c(8,42),"Profit"] <- fin[c(8,42),"Revenue"] - fin[c(8,42),"Expenses"]

#check
fin[c(8,42),"Profit"] <- NA
fin[c(8,42),]
#...............2nd way
fin[is.na(fin$Profit),"Profit"] <- fin[is.na(fin$Profit),"Revenue"]-
  fin[is.na(fin$Profit),"Expenses"]