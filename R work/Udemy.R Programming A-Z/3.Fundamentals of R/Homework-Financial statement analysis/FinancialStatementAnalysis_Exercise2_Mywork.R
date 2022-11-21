#You are helping assess the financial statement of organization X
#you have two data vectors
#1. monthly revenue
#2. monthly expenses
#both for the financial year in question

#Calculate
#profit for each month.
#profit = revenue - expenses
#profit after tax for each month = profit - total tax 
#total tax = taxable income * tax rate (30%)

#profit margins for each month - it is % of profit made per total sale
# = profit after tax / revenue

#mean profit for the year
#good months =
#months where profit after tax was greater than the mean for the year
#bad months = 
#months where the profit after tax was less than the mean for the year
#best month = 
#month where profit after tax was max for that year
#worst month =
#month where profit after tax was min for that year

#Hint 1
#new functions
#profit margin is how much of your revenue is becoming the final profit.
#profit margin of 12% means if the company made a revenue of $100, then it makes $12 after paying expenses and taxes.
#negative profit margin of 30% means, company made a loss of $30 for every $100 revenue. means there (expenses+taxes) were $30 more to the revenue
# round()
?round(x,digit)
# mean()
# max()
# min()

#Hint 2
#fill in the blank exercise

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
?mean()
profit <- revenue - expenses
profit
Mean.profit <- mean(profit)
Mean.profit
#round function
?round()


#calculating profit after tax for each month
Tax.rate <- 0.3
profit.aftertax.permonth <- profit -(Tax.rate * profit)
profit.aftertax.permonth

#calculating profit after tax for an year
?sum()
Taxable.income <- sum(profit)
Tax.rate <- 0.3
profit.aftertax.year <- round(Taxable.income - (Tax.rate * Taxable.income),2)
profit.aftertax.year

#calculating profit margin for that year
Total.Revenue <- sum(revenue)
Profitmargin <- round((profit.aftertax.year/Total.Revenue)*100)
Profitmargin

#calculating mean profit of the year
#for mean you need an array containing N numbers.
#this way, mean() can sum all the values and divide by total number of values.
?mean()
MeanProfit.aftertax.year <- mean(profit.aftertax.permonth)
MeanProfit.aftertax.year

#counting good and bad months w.r.t. the mean profit before tax
Good.Months <- 0
Bad.Months <- 0
for(i in 1:12){
if(profit[i] > Mean.profit){
  Good.Months <- Good.Months + 1
  
}else if(profit[i] < Mean.profit){
  Bad.Months <- Bad.Months + 1
  
}
}
Good.Months
Bad.Months

#presenting good and bad months in TRUE and FALSE
profit
rep(Mean.profit,12)
profit > rep(Mean.profit,12)
#counting good and bad months w.r.t. the mean profit after tax
Good.Months.aftertax <- 0
Bad.Months.aftertax <- 0
for(i in 1:12){
  if(profit.aftertax.permonth[i] > MeanProfit.aftertax.year){
    Good.Months.aftertax <- Good.Months.aftertax + 1
    
  }else if(profit.aftertax.permonth[i] < MeanProfit.aftertax.year){
    Bad.Months.aftertax <- Bad.Months.aftertax + 1
    
  }
}
Good.Months.aftertax
Bad.Months.aftertax
#presenting good and bad months in TRUE and FALSE
rep(MeanProfit.aftertax.year,12) 
profit.aftertax.permonth
profit.aftertax.permonth > rep(MeanProfit.aftertax.year,12)
profit.aftertax.permonth  > MeanProfit.aftertax.year
#why using rep()
#in order to use logical operator, vectors need to be of same length.

#max()
?max()
#max and min value of profit before tax
Best.month <- max(profit)
Best.month
Worst.month <- min(profit)
Worst.month
#max value of profit after tax
Best.month.aftertax <- max(profit.aftertax.permonth)
Best.month.aftertax
Worst.month.aftertax <- min(profit.aftertax.permonth)
Worst.month.aftertax

#name the best month and the worst month of the year




#before tax
Good.Months
Bad.Months
profit > rep(Mean.profit,12)
Best.month
Worst.month
#after tax
Good.Months.aftertax
Bad.Months.aftertax
profit.aftertax.permonth > rep(MeanProfit.aftertax.year,12)
Best.month.aftertax
Worst.month.aftertax