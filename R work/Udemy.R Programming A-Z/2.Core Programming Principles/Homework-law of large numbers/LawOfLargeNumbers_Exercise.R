#We study the law of large numbers and normal distribution
#using R as a leverage to access/analyse the data - Our goal

#law of Large numbers (LLN)
#scenario: You have been provided with a sample and you are calculating a value in that sample
#e.g. Coin tosses: n is number of coin tosses. for example sake, n=100, you are observing 100 coin tosses
#And value we are measuring is whether each coin is Heads or Tails.
#e.g. 1 is heads and 0 is tails. Then X is that measured value
#if it is heads, X is 1 and if it is tails, X is 0.

#So, if you did 100 coin tosses and X=43 that means you got Heads 43 times.
#average value if X= value of X/ total number of tosses.
#so average X for 100 tosses= 0.43 

#E(X) is the expected value if X.
#It is theoretical value of X. For fair coin tosses, there is 50-50 chance of getting Heads and Tails
#So, E(X) for getting Heads is 50/100(=0.5) and E(X) for getting tail is 50/100 (=0.5)

#What is Law of large numbers
#It states that as the sample size grows very large (approaches infinity), 
#then actual measured value (average value of X) is close to its Expected value, E(X)


#Normal Distribution
#A Bell curve tells that a function such as rnorm() to generate a number between 0 and 1 is 34%
#Similarly, the probability of a rnorm() function to generate a number between 1 and 2 is 13.6%.
#So, farther the number from zero, lesser the probability.
#e.g. If you take 1000 normally distributed variables with mean of zero and sigma is your sd.
#Then there is 68% chance for a random number to fall between -1 and 1.

#How we are going to use Normal distribution and LLN.
#In this exercise we are going to test the law of large number.
#It's going to be a statistical exercise using R that LLN holds true.
rm(x)
N <- 10 
x <- c(rnorm(N))
data <- data.frame(x)#this will create a vector

#Hint 1
#for(i in rnorm(100)){}
#i becomes the variable itself
#i is not just an index.

#Hint 2
# N <-
# counter <-
#for(i in rnorm(100)){if(..&..){}counter<-counter+1}
#answer<-counter/N
#answer

N <- 1000000000
counter <- 0
for(i in rnorm(N)){ #i becomes the variable itself each time you run your Loop.
  if(i>-1 && i<1){
    counter<-counter+1
  }
}
average <- counter / N
average



