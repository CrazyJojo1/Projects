

# Two methods to import data in R
#1. choosing file manually
#2. to set your working directory

#using function read.csv()
?read.csv()
#it create a data frame in a table format

#Method1: Select the file manually
read.csv(file.choose())
#file.choose() is a function will create a prompt for us to select the file manually

#Create an object name that stores that .csv file data
stats <- read.csv(file.choose())
#print object in console
stats
#As per global environment - stats contains 195 obs. of 5 variables.

#Method: Set the Working Directory and Read data from there

#What is a working directory?
#where by default your R-studio goes to open, save and so on...

#Setting your working directory (wd)
getwd()
#This functions tells what your current working directory is.


#how to save my file on a folder that already exist on my computer
?setwd()
#looks like you need to give it an argument
#setwd(supply the path where your working directory is) 

#Note:
#setwd() works differently on Windows computer and Mac

#Windows command
#setwd("C:\\Users\\username for your computer\\Desktop\\folder's name")

#Mac:
setwd("/Users/rajanbawa/Documents/R work")
#check what your existing directory is
getwd()

#now rm() to remove existing object
rm(stats)
#stats is no more in your global environment

#this time we will type the name of the file rather than using file.choose() function
stats <- read.csv("HomeWork5/DemographicData.csv")
#note: don't use forward hash in the beginning 
#e.g. read.csv("/foldername/filename_in_that_folder")
#doing so will result you an error.

#print the object in console
stats
#Voila! same file!
















