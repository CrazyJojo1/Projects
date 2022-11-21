
#Coercion happens when R converts one data type(mode) into 
#another mode

#Coercion is called "casting" in other machine languages.
#you caste a variable into another type.

#two types of Coercion:
#Implicit 
#explicit

#implicit is when you yourself is not telling R to do it.
#Instead R decides it for you

xx <- c(1.7,5,9,"a")
xx
#since vector can only have elements of same type. 
#and xx contains character element and numeric elements.
#R will coerce numeric elements into character type.

#since R is doing this on your behalf. It is implicit coercion

xx <- c(T,2)
xx
#True in logical representation is 1 and False is 0
#so again R is doing implicit coercion by converting T into 1.
y<- c(F,F,T,F,2,8)
y
#FALSE becomes 0 and FALSE becomes 1.
z <- c("a",TRUE)
#since you cannot have TRUE as 1 since you are working with a character
#R will implicitly coerce TRUE into a character

#explicit coercion
#you do it using as. function
typeof(xx)
a <- as.integer(xx)
typeof(a)
a
as.logical(1) #this converts 1 into TRUE
as.character(1)#this converts 1 into character

as.integer(1.89744534435345453)
#this removes all decimal points(not rounding off,instead removing)
x <- c(as.character(1.89),"V")
x
#above example is to say, don't leave it to R
#it is best to explicitly do it as have more control and awareness of what you are doing
#as it will be difficult to back trace an error if you allow R to do implicit coercion

as.numeric(FALSE)
as.logical("a")
as.logical("-1")
as.logical(-1)
#so you cannot coerce a character into logical
as.logical(3)
#and any non-zero numeric value is TRUE for as.logical() function
?as.logical
b <- c(TRUE,FALSE,TRUE)
#so true, True is not accepted ... use either T or TRUE
as.logical("true")
as.logical('True')







