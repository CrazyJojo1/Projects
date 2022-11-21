#What are functions?
#Think of function as a blender. 
#To Blend something, you need inputs.
#Similarly, functions requires inputs. But those inputs are variables
#Based on the Inputs, function produces an output.
#just like, blender will produce a delicious smoothy.
#f(Inputs) gives you outputs.

#Looking at the functions that we have already used:
rnorm()#generate random values from a normal distribution

c()  #used to add variables in a vector.
rep()#repetition function
seq()#sequence function

print()#when using loops, you use print() to print an output in console

is.integer()
is.numeric()
is.double()
is.character()
is.logical()

typeof() #to check if the variable is an integer, a double, a logical, or a character

sqrt()#get the square-root.

paste()#used to merge text.
a<-"Hello"
b<-"asshole"
paste(a,b)

isTRUE()#used to check if the value of variable is TRUE.

#........................................

#Today we will see how functions are constructed on the inside
#and what kind of parameter are they expecting?

#A  handy trick
#how to call a help function?
#use a ?
?rnorm()
#question_mark function_name, will open a help window describing what that function is.

#what we found in the help window?
#rnorm(n, mean = 0, sd = 1)
#this means rnorm() needs three inputs.
#These inputs needs to be in the blender to get an output
#also, first input in rnorm() is essential 

#Note, if a function has equal to sign, =, then that indicates default parameter.
#if you don't state 2nd and 3rd input, R assumes mean=0 and sd=1.

rnorm(5) # R assumes mean=0 and sd=1 by default.

rnorm(5, 100, 8) #you are taking mean=10 and sd=8. So output is different compared to rnorm(5).
rnorm(5, 10, 3)
#based on LLN and normal distribution
#most variable, 68.2% of variables are expected to fall between (mean+sd) and (mean-sd)
#so you can expect majority of the output falls in 18 and 2.
#mean of 10 means most numbers will be concentratd around 10

#how to specify parameters to a function
#1. specify them in order
rnorm(5, 10, 8) #R will assume mean = 10 and sd = 8.
#2. specify by naming them. This is called passing named parameters to a function
rnorm(n = 5, sd = 8, mean = 10)
#this allows you to decide the sequence for inputs rather than R assuming them for you.

#3. skipping input. Then R will assume default value for that input
rnorm(5, sd = 10) #R assumes mean=0.

#.........
?c()  #simply helps you combine values in one vector.
#c() has recursive parameter, but that is a thing of later for now
c(2,3,4,5,6,10)
#..........
?seq()  #it works as a colon, but provides additional flexibility

seq(200, 300, length.out=5)
seq(10,20,3) #syntax: seq(start,end,step)
#seq(start, end) is similar to (start:end)
seq(10,20)
10:20

#using parameters name
seq(from = 10, to = 20, by = 3)#from means 'start', to means 'end' and by means 'step'

#What else can be do using seq()
#you can use- length.out
#What length.out does?
#it specifies the final length of the output
seq(from = 10, to = 20, length.out = 5)
#so this automatically creates a step of 2.5
#(to-from)/(length.out-1) = 10/4 = 2.5
seq(from = 10, to = 20, by = 2.5)

seq(from = 10, to = 20, length.out = 100)
#10/99=0.101 is your step.
#so using length.out parameter, you don't need to specify the step. R does that calculation for you.

#this because the default value of by is equal to (to-from)/(length.out-1).

#what else parameter can you use with seq()
#along.with

#you have a vector x that contains 3 values
x <- c("a", "b", "c")
seq(from = 10, to = 20, along.with=x)
#running with along.with=x will also result in 3 values 
#why?
#because vector x has three values.
x <- c(2, 3, 4)
seq(from = 200, to = 300, along.with=x)
#In other words, you indirectly specified length.out.
#Also, it doesn't matter whether 'x' is a numeric vector or a character vector.
#What's important is its length.
x <- c(2, 3, 4, 6, 9)
seq(from = 200, to = 300, along.with=x)

#..............
y <- c(2, 3, 4, 5)
?rep()
rep(y, times=3)
rep(y, length.out=3) #length.out decides the length of final output
#length.out=3 means only 3 variables will be in your output.
rep(y, length.out=10)
rep(y, each = 10)
#each=10 means each element of a vector y will be repeated 10 times.

#difference between parameter 'times' and 'each'
rep(y, times=3)
rep(y, each=3)
# y * 3 is y y y 
#each y element * 3 = 3*element y1 3*element y2 3*element y3.....so on.

#.................
?sqrt()
#sqrt() works in vectorized mode
A <- seq(from=10, to=20, length.out=3)
A
sqrt(A) #this does square root of all elements existing in that vector A

B <- sqrt(A) 
B
#this way you can do square root of all three numbers at the same time
#this is specialty of R.
#Since it works in vectors, you can pass vectors to a function and get vectors as output.
#a fundamental feature of R.