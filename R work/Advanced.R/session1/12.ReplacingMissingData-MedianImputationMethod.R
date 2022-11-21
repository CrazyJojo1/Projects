
#median imputation method:
#impute means assign a value by inference (inference/estimation which comes from the rest of the values in the same column)

#imputation allows you to proxy a value 
#e.g. The no. of employee in company x of retail sector is missing
#if you know the mean of employee's number for retail sector then you can use that value as proxy.
fin
str(fin)
Retail <- fin[fin$Industry=="Retail", ]
?mean
mean(Retail$Employees,na.rm=T)
fin[is.na(fin$Employees)&fin$Industry=="Retail","Employees"] <- mean(Retail$Employees,na.rm=T)

mean(fin[fin$Industry=="Retail","Employees"],na.rm=T)
median(fin[fin$Industry=="Retail","Employees"],na.rm=T)

#Note:
#it is best to place this median in a variable
#so later on if you wish to change those values... you know where to look for.

#..................................revision
fin <- fin.backup
fin <- fin[!is.na(fin$Industry),]
rownames(fin) <- NULL
tail(fin)
fin[is.na(fin$State),]
fin[is.na(fin$State) & fin$City=="New York","State"] <- "NY"
fin[is.na(fin$State) & fin$City=="San Francisco","State"] <- "CA"
fin[c(11,82,265,377),"State"]
#...................................
is.na(fin$Employees) 
fin[is.na(fin$Employees),]
median.employee.retail <- median(fin[fin$Industry == "Retail","Employees"],na.rm=T)
median.employee.finservice <- median(fin[fin$Industry == "Financial Services","Employees"],na.rm=T)

fin[is.na(fin$Employees) & fin$Industry == "Retail","Employees"] <- median.employee.retail
fin[is.na(fin$Employees) & fin$Industry == "Financial Services","Employees"] <- median.employee.finservice
#check
fin[c(3,330),"Employees"]
View(fin)
#......................growth column
fin[is.na(fin$Growth),]
median.growth.industry <- median(fin[fin$Industry=="Construction","Growth"],na.rm=T)
fin[is.na(fin$Growth) & fin$Industry == "Construction","Growth"] <- median.growth.industry
#check
fin[8,"Growth"]
anyNA(fin$Growth)
#.......................what else to fix
View(fin)
fin[!complete.cases(fin),]

#.........................revenue

median.rev.constr <- median(fin[fin$Industry=="Construction","Revenue"],na.rm=T)
fin[is.na(fin$Revenue) & fin$Industry=="Construction" ,"Revenue"] <- median.rev.constr
#check
fin[c(8,42),"Revenue"]

#........................expenses
#careful:
#Don't use median amputation for cells where you can use Factual analysis method
#e.g. if rev and profit is given.... you can calculate the expense
#so to avoid this mistake: you can add additional protection
#is.na(fin$profit) ... if and on if profit is missing.... only then run the code
fin[is.na(fin$Expenses),]
median.exp.constr <- median(fin[fin$Industry == "Construction","Expenses"],na.rm=T)
fin[is.na(fin$Expenses) & fin$Industry == "Construction" & is.na(fin$Profit),"Expenses"] <- median.exp.constr

#check
fin[c(8,42),]


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

