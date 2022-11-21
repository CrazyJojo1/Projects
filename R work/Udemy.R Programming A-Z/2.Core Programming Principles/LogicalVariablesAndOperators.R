#logical operators can have two possible values-TRUE or FALSE.
#TRUE and FALSE needs to be in caps.

#logical operator is >(greater than), <(less than), ==(means equal to)
4 < 5
10 > 100
4 == 5
#when you run three of the above operation, you get answer in TRUE or FALSE.
# R has quite a few logical operator
# 10 logical operator used in R are as follows:
# == (means equal to )
# != (means not equal to)
# < (less than)
# <= (less than or equal to)
# > (greater than)
# >= (greater than or equal to)
# ! (means Not)
# | (means Or) - in some languages you need the double. It is a vertical line, unlike division sign.
# & (means And)
# isTRUE(x) function to check if something is true and x is the name of the variable you are checking

4<5
# you just want to print the result, but rather store it in variable. This variable will showup in our global environment. 
res <- 4<5
#result is the name of the variable and its value is TRUE. The result of the operation 4<5 is store in variable res
res
typeof(res) #check variable type.
res2 <- !TRUE # you are giving 'Not true' value to variable res2. 'Not true' means it is FALSE.
res3 <- !(5>1) #5>1 is true, but '!' will convert that to FALSE.
res4 <- !(6>7) #6>7 is false, but '!' will convert that to TRUE.

var <- res | res2 #using '|, an Or operator' means one of the value has to be TRUE for the net outcome to be TRUE.
var2 <- res2 | res3 # both res2 and res3 are false so result is FALSE.
var3 <- res & res2 # '&' means both values has to be TRUE for the outcome to be TRUE
var4 <- res & res4

isTRUE(res) #you are checking if the outcome of res operation is TRUE.

isTRUE(res2)
#Logical variables are variable such as res, res2, res3, etc. that store value in TRUE or FALSE.





