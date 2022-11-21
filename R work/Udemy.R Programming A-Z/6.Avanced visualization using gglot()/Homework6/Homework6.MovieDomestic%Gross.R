
#Problem:
#Chart has been created. However,
#the R code used to create the diagram is lost
#come-up with the code that will create the same plot
#............
getwd()
NewMovieList <- read.csv("Homework.Last/Section6-Homework-Data.csv")
#inspect the data
head(NewMovieList)
str(NewMovieList)
#change column names
colnames(NewMovieList) <- c("WeekDay","Director","Genre","MovieName","Release.Date","Studio",
                        "AdjustedGrossMillion","BudgetMillion","GrossMillion","IMDB.Rating","MovieLens.Rating",
                        "OverseasMillion","Overseas.Percent","ProfitMillion","Profit.Percent",
                        "Runtime","US$M","GrossUS.Percent")
#adjusated gross means gross adjusted for inflation
#inflation of ticket prices

#check colnames
str(NewMovieList)
head(NewMovieList)
tail(NewMovieList)
summary(NewMovieList)

#create factor
NewMovieList$Studio <- factor(NewMovieList$Studio)
NewMovieList$Genre <- factor(NewMovieList$Genre)
NewMovieList$WeekDay <- factor(NewMovieList$WeekDay)
#delete last column
NewMovieList$NA <- NA
#check structure and summary
str(NewMovieList)
summary(NewMovieList)

#filter the data frame based on studio
levels(NewMovieList$Studio)
NewMovieList$Studio==c("Buena Vista Studios","Fox",
                      "Paramount Pictures","Sony",
                      "Universal","WB")
NewMovieList$Genre==c("action","adventure","animation","comedy","drama")
FilteredList <- NewMovieList[NewMovieList$Studio==c("Buena Vista Studios","Fox",
                                                    "Paramount Pictures","Sony",
                                                    "Universal","WB")&NewMovieList$Genre==c("action","adventure","animation","comedy","drama"),]
#check our filtered data frame
summary(FilteredList)
levels(FilteredList$Studio)
#building chart
#step1. data
a <- ggplot(data = FilteredList, aes(x=Genre,y=GrossUS.Percent,
                                     size=BudgetMillion))
                                     #color=Studio))
#add geometric layer to it
a + geom_jitter() +geom_boxplot(alpha=0.6)










