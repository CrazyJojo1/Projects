
#we have merged data frame and the use qplot() to visualize 
qplot(data=merged, x=Internet.users,
      y=Birth.rate, color = Region)
#change shapes
qplot(data=merged, x=Internet.users,
      y=Birth.rate, color = Region, 
      size=I(5), shape=I(17))
#shape = 17 converts all dots into triangles
#again, I(17), helps in getting "all" dots in triangle shape
qplot(data=merged, x=Internet.users,
      y=Birth.rate, color = Region, 
      size=I(5), pch=I(17))

#you can use pch instead of shape parameter 
#both give you same outcome.

#try different values for size
#pch = 2, gives you hollow triangles

qplot(data=merged, x=Internet.users,
      y=Birth.rate, color = Region, 
      size=I(5), shape=I(2))

#pch = 15, it gives you square
#pch = 23, gives you hollow diamonds
qplot(data=merged, x=Internet.users,
      y=Birth.rate, color = Region, 
      size=I(5), shape=I(15))
qplot(data=merged, x=Internet.users,
      y=Birth.rate, color = Region, 
      size=I(5), shape=I(23))

#Transparency
#if some of your dots overlap... 
#then it may hide some of the dots 
#this may skew your understanding to it.

#for transparency, use the parameter, alpha,
#alpha = 0 means fully transparent
#alpha = 1 means fully opaque.

#so feed values between 0 and 1
qplot(data=merged, x=Internet.users,
      y=Birth.rate, color = Region, 
      size=I(5), shape=I(19),
      alpha=I(0.5))
#now overlapped dots can be seen
#you can see behind the dots.

#esp. where you have cluster of observations...
#meaning more data is gathered around one place
#these darker areas can be seen better using transparency.

#............add title 
#use the parameter, main = ""
qplot(data=merged, x=Internet.users,
      y=Birth.rate, color = Region, 
      size=I(5), shape=I(19),
      alpha=I(0.6),
      main = "Birth Rate vs Internet Users")
#now you have a title to your plot









