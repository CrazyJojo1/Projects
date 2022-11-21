
#get a scatter plot
#life expectancy (y-axis) and Fertility rate (x-axis)
#categorize with by Countries Regions

#data
#year 1960 and year 2013 data is provided - so there going to be two visualizations
#obtain visualization for these years

#data is in .csv file and in R vectors

#data analysis
#provide insights onto how two periods compare.

#....................

#importing data
getwd()

data <- read.csv("/Users/rajanbawa/Documents/R work/HomeWork5/Homework5.csv")
#open data in console
data
head(data)
tail(data)
#using subsetting to obtain data for 1960
data.1960 <- data[data$Year==1960,]
data.1960
head(data.1960)
tail(data.1960)


#using subsetting to filter data to get data for 2013
data.2013 <- data[data$Year==2013,]
data.2013
head(data.2013)
tail(data.2013)
 
#now we have obtained data for both years
summary(data.1960)
summary(data.2013)

#add life expectancy column in each year's data

#make sure number of rows are the same

data.1960$LifeExpectancy <- Life_Expectancy_At_Birth_1960
data.2013$LifeExpectancy <- Life_Expectancy_At_Birth_2013
#check if new column is added
str(data.1960)
str(data.2013)
head(data)

colnames(data.2013) <- c("Country.Name","Code", "Region", "Year", "Fertility.Rate","LifeExpectancy")
#analysing data
summary(data.1960)
#min average life lived =28.1 and max=73.55
summary(data.2013)
#min average life = 48.94 and max=83.83

#Conclusion derived after looking at min and max for each year
#compared to 1960, min. average life increased by 20 years approx. in 2013
#compared to 1960, max. life expectancy increase by 10 years.

#so In 2013 people are definitely living longer than they were in 1960.

#Now that we have both data, use qplot() to plot 

#check if qplot() is activated
?qplot()
library(ggplot2)
#it is activated
Plot.1960 <- qplot(data=data.1960,x=Fertility.Rate,y=LifeExpectancy,color=Region,
               size=I(5),shape=I(19),alpha=I(0.7),main=
                 "Fertility rate vs Life expectancy for the year 1960")

Plot.1960

#create plot for 2013
Plot.2013 <- qplot(data=data.2013,x=Fertility.Rate,y=LifeExpectancy,color=Region,
               size=I(5),shape=I(19),alpha=I(0.7),main=
                 "Fertility rate vs Life expectancy for the year 2013")
Plot.2013

#before we analyze these data....
#understand what these variable mean
#fertility rate=
#number of kids a women can bear before she hits menopause.
#4.2 means on average 4.2 kids were born from a single women in that country before she hits menopause.

#life expectancy -
#average age of a person before he dies
#80 means life of an average person is 80 years.

#data analysis 
#1960

#cluster of Africa's fertility rate fall between 6 and 8
#while the life expectancy max's to 60

summary(data.1960)
Africa <- data.1960[data.1960$Region=="Africa",]

max(Africa$LifeExpectancy)

#creating a function
Life <- function(df,n){
  Data <- df[df$Region==n,]
  a <- max(Data$LifeExpectancy)
  print(a)
  b <- max(Data$Fertility.Rate)
  print(b)
}
#for year 1960s
x<-Life(data.1960,"Africa")
x<-Life(data.1960,"The Americas")
x<-Life(data.1960,"Middle East")
x<-Life(data.1960,"Asia")
x<-Life(data.1960,"Europe")
x<-Life(data.1960,"Oceania")
#for year 2013
y<-Life(data.2013,"Africa")
y<-Life(data.2013,"The Americas")
y<-Life(data.2013,"Middle East")
y<-Life(data.2013,"Asia")
y<-Life(data.2013,"Europe")
y<-Life(data.2013,"Oceania")

#analysing data
#Fertility rate in 1960 was highest for African region
#it was between 6-8
#In 2013, You realise a substantial drop in fertility rate in Africa
#African still have highest fertility rate, but
#the value exist between 4-6

#Europeans have been the longest livers for both years
#In 1960, life expectancy was between 60-80
#in 2013, life expectancy existed between 70-90



#testing
df <- data.1960
n<-"Africa"
Data <- df[df$Region==n,]
y<-max(Data$LifeExpectancy)
levels(data.1960$Region)
data.1960[data.1960$Region=="Africa",,drop=F]