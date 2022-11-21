#For loop is more convenient than While Loop
#Copy the code from WhileLoop tutorial and compare that with ForLoop

#WhileLoop Structure
#while(logical expression){body of the loop}


counter <- 1 
while(counter < 12){
  print(counter)
  counter <- counter + 1
}

#ForLoop structure
#for(specify iterations){Body of the loop}

for(i in 1:5){           
  print("Hello")     #you want to print out the word Hello
}
#in () you need to specify the iteration. How many times you want the Loop to run.
#variable i, which will be iterated over 5 values. It would print out the phrase "Hello" 5 times

#What is happening here, we are for the first time dealing with vectors.
# R is all about vectors and vectorised operations.
#1:5 is a vector or vector construct
1:5
#you get: 1 2 3 4 5, it is an array of numbers or simply, sequence of numbers.
# when we use (i in 1:5), we saying i has to iterate within this construct, which is vector 1 2 3 4 5
for(i in 5:10){           
  print("Hello")     #you want to print out the word Hello
}
#now you get 6 values as vector construct has 6 values,5  6  7  8  9 10
5:10
# it really doesn't matter from where you start. You can also use characters instead of numbers.
#so i just decides the repetitions for the Loop.

#ForLoop structure is simple and short compared to WhileLoop
#ForLoop uses vectors

for(i in 5:10){           
  print("Hello")     #you want to print out the word Hello
  i <- i+1
}
#using i <- i+1 is not making any difference. as (specified iterations) is doing just that.

#examples 
for(i in 1:10){
  x <- i^2
  print(x)

 
}



