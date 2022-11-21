#exploring data
str(fin)
?ggplot
#activating ggplot2
library(ggplot2)
#plotting
p <- ggplot(data=fin,aes(x=Expenses,y=Revenue))
#add geom layer
p + geom_point(aes(color=Industry),
               size=5,
               alpha=0.7)

p1 <- ggplot(data=fin,aes(x=Industry,y=Growth))
p1 + 
  geom_jitter() +
  geom_boxplot(alpha=0.6,outlier.color=NA) 
  
?geom_boxplot              

#......................
#Scatter plot classified by industry showing revenue, expenses, profit
p <- ggplot(data=fin)
p +
  geom_point(aes(x=Revenue,y=Expenses,size=Profit,color=Industry))

#scatter plot that includes industry trend for the expenses and revenue
q <- ggplot(data=fin, aes(x=Revenue,y=Expenses))
q +
  geom_point(aes(color=Industry)) +
  geom_smooth(aes(color=Industry),fill=NA,
              size=2)
#data insights
#as construction companies reach that 10 million mark,
#you see dip in expenses.
#But as the revenue keeps on increasing, expenses catch up and start rising as well.

#You see these similar trends in Government services as well

#For IT services
#Expenses are high initially, but you see expenses curve decline with increase in revenue

#boxplot
f <- ggplot(data=fin,aes(x=Industry,y=Growth,
                         color=Industry))
f + geom_jitter() +
  geom_boxplot(size=1,alpha=0.5,outlier.color = NA)
#outlier.size=0 will also eliminate the outliers from the chart









