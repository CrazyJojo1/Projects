#Different types of variables
#double type(default), integer(has L written at the end of a number)
#complex, logical,character

x <- 2.75  # <- is an assignment operator used to give value to a variable.
typeof(x)  # typeof() is a function used to check variable type
y <- 2L
typeof(y)
z <- 2+5i
typeof(z)
a <- TRUE
c <- F   #use either false in all caps or just initial letter in caps
typeof(c)
b <- "Great"
typeof(b)

#Using variable
#perform arthmetic calculations
x + y
sqrt(x) #sqrt() is a function used to calculate the square-root
d <- x / y
d   #just running the variable name, prints the value stored in variable in your console
e <- "day"
f <- paste(b,e)  #paste() is used to merge characters 

#LogicalVariablesAndOPerators
#Logical operators are <, >, <=, >=, ==, !, !=, & (&& used to mean AND for loops and if codes), | (|| means OR for loops and if codes), isTRUE() 
#isTRUE() is a function used to check if value stored in a variable is TRUE or FALSE.
#24 %% 7 == 0, used to check whether the remainder is zero when 24 is divided by 7.

#Logical variables are variable that store values in TRUE or FALSE.
g <- 4<5
h <- 4>5
#g nd h are logical variable as its value is TRUE or FALSE.
res <- !(4>5) 
res2 <- g | h # if one of these variables is TRUE, then res2 will have a value of TRUE.
res3 <- g & h # both g and h need to be TRUE for logical variable res3 to have TRUE value.
isTRUE(res3)

#While Loop
#SYNTAX- while(logical expression){body}
x <- 45
while(x < 50){
  print("feasible")
  x <- x+1
}
#to stop an infinite whileLoop press esc key.
#make sure it is not infinite 

#Console
#Console is R while R studio is scripting platform what allows to save and run specified code only. 
#R studio doesnot stores the result of the codes, but just the code.
#Instructor said: R studio is a shell on top of R meaning R studio passes the code to the R. R studio is the code work and Console does all the execution part of the code.

#ForLoop
#SYNTAX- for(number of iterations){body}
#number of iterations means how many times you want to run the loop. So unlike WhileLoop, ForLoop is always finite.
for(i in 1:6){
  print("Great day")
}
#1:6 is a vector that has 6 values, 1 2 3 4 5 6.
          for(i in 1:6){
            x<- i^2
            print(x)
          } 
#above you are passing the value of vector to x and then printing x value for each iterations.

#rnorm()
#rm()
















