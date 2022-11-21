
#back to layer 2- aesthetics

#.........overriding 

#let's create an object
q <- ggplot(data=movies, aes(x=CriticRatings,
                             y=AudienceRatings,
                             color=Genre,
                             size=BudgetMillions))
#add geometry layer on top of q
q + geom_point()
#what do you see
#geom_point is inheriting the aesthetics from q

#but we can override those aesthetics
#meaning?
#if you want different aesthetics than you have in q
#you can achieve that
#how??
#specify aesthetics inside geom_point()
#let's see how
#let's say you want different aesthetics for size 

q + geom_point(aes(size=CriticRatings))
#now size is different.... 
#we have overriden aesthetics present in object q
#
#as the critic rating increases... so does the size
#and Budget has no affect on the size parameter


#.........example2
#let's say you want to over-ride color
q + geom_point(aes(color=BudgetMillions))
#now color is different
#almost same color throughout
#because budget is not a categorical variable
#so color remains same throughout
#since size in object q is size=budgetMillions, size so increase

#overriding doesnot means you are modifiying object1
q + geom_point()
#q remains the same
#overriding is modifying geom_point() and not q

#...............example3
#let's say you want to override x-axis and y-axis
q + geom_point(aes(x=BudgetMillions))
#what do you see
#x-axis, even though it is written as CriticRating, is budgetMillions
#data analysis point of view
#Budget does not impact Audience Rating.

#Writing BudgetMiilions on x-axis instead of CriticRating
#what is the fix?
q + geom_point(aes(x=BudgetMillions)) +
  xlab("Budget Millions $$$")
#you have successfully changed the x-axis

# same way you can also change y-axis
q + geom_point(aes(x=BudgetMillions)) +
  xlab("Budget Millions $$$") +
  ylab("Ratings by Audience")
#so using xlab and ylab you can change 
#what you want to see on your x-axis and y-axis

#..............example4
#last session we did
p + geom_line() + geom_point()
#let's say this time we want to reduce the size of these line
#since lines are too thick ...we cannot see properly
#So let's make them thin
#reduce line size
p + geom_line(size=1) + geom_point()
#but something is odd here??
#we are changing thickness of lines 
#without using aes()

#aes() is for mapping
#what we did is not mapping
#what we did is setting
#what the difference??
#more on that later










