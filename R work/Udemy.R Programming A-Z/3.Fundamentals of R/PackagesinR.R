#What are these packages?
# What's inside these packages?
#packages contain functions (blenders)
#Some packages come with in inbuilt inputs(fruits)
#each package has its designation.
#designation means the specificity
#some blenders are designed to work with ice, some designed without ice,
#some blenders can process vegetables.

#In short, each package is relevant to certain task. 

#you need different packages to work on different task
#you have package for creating charts and plotting graphs
#you have packages that can process very large data sets
#package that is full of functions that are good for processing data frames

#since these packages come with inbuilt functions
#packages expand the functionality available to you in your R programming

#...............
#definition of a package:
#Packages are collection of R functions, data, and compiled code in a well-defined format. 
#The directory where packages are stored is called the library.

#library is simple a folder where packages are going to be stored.
#..............

#to delete a package
#click on the cross button (on the right of the package) and a pop will appear...asking you delete, action cannot be undone
#select yes 
#voila! deleted.

#re-install the package
#1st way
#click on install icon (present at the top of package window)
#type the name of the package and select install.

#note:
#These packages are installed from CRAN
#What is CRAN?
#CRAN stands for Comprehensive R archive network
#Since R is free 
#users contribute packages to this R archive network
#And other users can use those those packages by downloading from CRAN

#2nd way
#let's say you want to install ggplot2
#ggplot2 is a package for working with graphics
#type in R studio: install.packages("ggplot2")
install.packages("ggplot2")
#package was downloaded from internet and then installed on your computer
#There are some functions that we don't have access to
#we can access qplot()
#its a function from the ggplot package
#how do we know 
#?qplot() will show up an error message in console
?qplot()
#error message: no documentation for it as a function.
?ggplot()
#even ggplot is not in our R system
#This can happen when installed package is not activated 
#another example is diamond data set, this package comes with some pre-package data

?diamonds #R couldn't discover any package data set named 'diamond'

#in order to activate the package 
library(ggplot2)
#now ggplot2 package is activated
?qplot()
#help window has opened.
?diamonds
#help window has opened.

#package contains a set of functions that perform specific task
#library() is a function that activates specified package on to your computer

#Teaser to what qplot() can do 
qplot(data = diamonds, carat, price, color=clarity, facets =.~clarity)

#data = diamonds, you are using diamomds file which contains its data set
#carat = variable for x axis
#price = variable for y axis
#color = clarity, is third variable. This gives color to all data points
#facets is a ?. I have no idea.

#so packages let's you create such plots in a matter of seconds
#That's the beauty of it.
======












