#WhileLoop is not commonly used in R because R has other means of achieving the same result through function like S apply, L apply, etc. 

#while is written in small caps

#while(logical expression){body of the loop}
#when you Run, WhileLoop will check the logical expression(e.g.4>5) first,
#if it is TRUE, then R will execute what ever is inside the body of the Loop.
#The Loop will keep on running till logical expression becomes FALSE

#let's say you want to print out "Hello". Letters are always in double quotations.
#To print you use function called print(). To print something in a Loop, you use print() function.

while(False){
  print("Hello")
}

#above while program will not run as logical expression is FALSE.
#but is it was TRUE, then it will keep going on forever, it will be infinite loop.

#In order to cancel an infinite loop, all you have to do is press ESC key.

#Create Loop to count some numbers and print them out.


#counter is a variable name that will be governing the execution of the loop
#counter<12 means we want to count it till 11.
#print(counter), you want to display the value of counter.
counter <- 1 
while(counter < 12){
  print(counter)
}
#But if you leave the while loop as shown above, value of counter remains as 1, which means it is not changing and your Loop will become infiniteLoop

#What if we can increase the value of counter by the end of each loop as shown.
counter <- 1 
while(counter < 12){
  print(counter)
  counter <- counter + 1
}
#Now it is not an infinite loop as counter value is increasing by 1 at the end of each Loop
#at the start of Loop, counter value is 1
#at the end of Loop, counter value is 12. When value is 12, Loop stops. You can see its value in Global environment.

#another example,

x <- 32

while(x>1){
  y <- x / 2
  print(y)
  x <- x-.5
}






