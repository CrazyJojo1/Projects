#matrices

#to get the table format in R - you need to use matrices

#So to get the table in the format you need:-
#you need to understand how matrices are structured and operated in R
#Plus- matrices are foundations for data frames

#What is a vector
#vector is a sequence of data of the same base type
a <- c(1,2,3,4,5)
#This gives you a numeric vector

#What else do you see in vector a??
#Vector is one-dimensional.

#What is a table?
#it has columns and rows. 
#meaning it is two-dimensional

#What is a matrix?
#It is an arrangement of data in rows and columns
#So it is a table.

#Indexation:

#indexation for a vector
a <- c(4,6,8,9,10)
#to get the third element you will use:
a[3]
#answer is 8 as it is the third element

#Indexation for a matrix
#Since matrix is two-dimensional, 
#you need to have two numbers in the square bracket to reach to the desired element 
#What does that look like?
#Syntax for Matrix indexation - name of matrix[row number, column number]
#e.g. A[2,5] means for matrix A, look for an element what is in row 2nd and in 5th column
#think of [2,5] as a point in your chart

#What if you want to select entire row or entire column
#From what we have learned:
#indexation for matrix A = A[row number, column number]
#This is when you are aiming at a specific point in your matrix.

#To select entire row.
#let's say you want to select entire row 3rd
# you  use : A[3,] 
#To select entire column.
#let's say you want to select 1st column entirely
# you use : A[,1]

#One last thing about matrices:
#matrices can only have element of the exact same type.
#means you can put character and number in the same matrix.
#if you do: all numbers will be converted in to characters
























