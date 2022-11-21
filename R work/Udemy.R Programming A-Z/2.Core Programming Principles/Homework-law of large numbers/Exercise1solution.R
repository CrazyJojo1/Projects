N <- 10000000
counter <- 0
for(i in rnorm(N)){ #i becomes the variable itself each time you run your Loop.
  if(i>-1 && i<1){
    counter<-counter+1
  }
}
counter
average <- counter / N
average

#Playing around
#understanding how different loops will run
#Important : pay attention to counter and counter1 as you need both to be correct


N=1000000
counter <- 0
counter1 <- 0
for(i in rnorm(N)){
  if(i <= 1 && i >= -1){
    counter <- counter + 1 #you cannot use (counter1 <- counter + 1), it needs to be same. Because each iteration calculates the value of counter and remembers its value for next.
  }else if(i <= 2  && i > 1){
    counter1 <-counter1 + 1 #you have to create another counter1 variable as counter is already in use.
  }else{
    print("not found")
  }
}
counter
average = counter / N
average

#check if your code is right
#e.g. if N=10, then counter + counter1 + "not found" must be = N

#how R scripting is different compared to other programming languages
#below is the example
#Unlike other programming languages, you cannot write as below:
a[i] <- rnorm(10)
counter <- 1
for(a[i] in rnorm(N)){  #it is already showing a syntax error
  if(a[i] < 1 && a[i] > -1){
    counter <- counter + 1
  }
}
average = counter1 / N
average


#understand counter and how the iteration is happening
