
##### 11. TYPES OF VARIABLES 
# To intialize an integer
a = 2L# Use 'L' to intialize as an integer or it becomes double

# To find the datatype of an integer
typeof(a)

# Datatype double
b = 2.5
typeof(b)

# Datatype complex
c = 2+3i
typeof(c)

# Datatype character
d = 'hi'
typeof(d)

# Datatype Logical
f = TRUE
typeof(f)
#################################################
##### 12. USING VARIABLES 

#SQRT
sqrt(81)

#String addition
m1 = 'Hello'
m2 = 'Bob'
message = paste(m1,m2)
print(message)

################################################

######### 13.LOGICAL VARIABLES AND OPERATORS

# Not operator --- !

#isTRUE()
isTRUE(TRUE)
isTRUE(FALSE)

#################################################

######### 14. THE "WHILE" LOOP

# Syntax: while(condition){body}

# To get out of an infinite loop, click on Esc

#######################################################

######## 16. THE FOR LOOP

# Syntax: for(condition){}

# Example
for(i in 1:5){
  print('Hello R')
}

# Printing range
1:5
##################################################

####### 17. THE "IF" STATEMENT

# To get n nos. of normal distbn nos.: rnorm(n)
rnorm(5)


# To remove a variable : rm(variable_name)

#if...else syntax
r=5
if(r==1){
  print('yes')
}else if(r==0){
  print('no')
}else{
  print('snow')
}

#########21. What is a vector?

# Even a single number is stored as a vector in R

## Creating vectors
first_vector = c(1,3,4,3)
typeof(first_vector)
##Type is double coz, R treats numbers as doubles unless specified explicitly
###More functions to check
is.numeric(first_vector)##TRUE
is.integer(first_vector)##FALSE
INT_vector = c(1L, 3L)
is.integer(INT_vector)

seq(1,14,2)###Equivalent to range function of python
1:14###Equivalent to range function of python without step


b = rep(2,7)###Vector of 2, 7 times
rep("a",5)
rep(b,2)###You can replicate even a vector....b is a vector


########################################################################

######23. USING THE [] BRACKETS

letters = c("a","b","c","d","e")
letters[1]#------------------> Accessing elements in R
letters[-3]#-----------------> Gives everything but c
letters[c(1,3,4)]#----------> Access multiple elements in a vector
letters[-c(1,3)] #---> All, except a and c
letters[c(-1,4)] ## CAN'T DO THIS !!!!!!!!!!
letters[-2:-4] ##Removes everything from 2 to 4
#########################################################################

######24. VECTORIZED OPERATIONS

p = c(1,3,4)
q = c(1,-1,10)
p>q #########Returns a boolean vector

s = c(1,2)
t = c(1,2,1,2)
s+t#####Recycling of vectors...Like Broadcasting of vectors

#Recycling happens even if it is not proper...U just get a warning

##########################################################################

######25. The Power of Vectorized Operations

q = c(1,2,3)
for(i in q){
  print(i)
}
#####This is how you print individual elements

###To make an empty vector
emp = rep(NA,100)
emp

####################################################################
########27. PACKAGES IN R

##Package is a collection of function, data and documentation
##Libraries are directories where packages are stored in 

##################################################################
####### 32. MATRICES

##To access any element in a matrix: matrix_name[row_index,col_index]

###Matrix indexing

#      [,1]  [,2] [,3]          
# [1,]  1     2    3
# [2,]  4     5    6     

####################################################################
######## 33. BUILDING YOUR FIRST MATRIX

####Three functions: matrix(),rbind(),cbind()
###Matrix bends the vectors into matrix...Filling columns first by default
##Syntax for matrix: matrix(data,nrow=,ncol=)
vec = 1:20
matrix(vec,5,4)
matrix(vec,5,4,byrow=T)###Filling by row
##When you bind by row or col, the row rames or column names will be the names of vectors

############################################################################

###### 34. NAMING DIMENSIONS

###Accessing an element of the matrix by name matrix_name["row_name","col_name"]


##########################################################################

##### 35. ROWNAMES() AND COLNAMES()

###Naming a vector : names(vector_name) = c("a","b",....) 

chal = c(1,2,3)
names(chal) = c("a","b","c")
names(chal)###Now, a-->1,b-->2,c-->3
chal["c"]###Gives output 3

###To clear the names given

names(chal) = NULL
names(chal)
#### 'each' in replicate
rep(c(1,2),each=3)###You get 1 1 1 2 2 2

###To name rows in a matrix
##rownames(vector_name) = c("r1_name","r2_name",......)

####To name columns in matrix
##colname(vector_name) = c("c1_name","c2_name",.......)

##We can use rowname() and colname() like we use names()

#########################################################################

##### 37. VISUALIZING WITH MATPLOT()

###Transpose function: t(object---df,matrix)

###Matplot() is used to plot columns only...So if you wanna plot row data,take transpose

# matplot(t(Data),type="b",pch=15:18,col=c(1:4,6))
# legend("bottomleft",inset=0.01,legend=Players,col=c(1:4,6),pch=15:18,horiz=F)

###is.matrix() function checks if the object is a matrix
###is.vector() function check if the object is a vector

##When you slice a matrix and if the output is a 1D object, R treats it as a vector
## If you want it as a vector, Games[1,,drop=F]--Now, you get the first row alone as a matrix

########################################################################################


#### 40. CREATING YOUR FIRST FUNCTION()

###Function_name = function(){body}

####################################################################################

#### 47. EXPLORING YOUR DATASET

### Getting the number of rows in the data frame: nrwow(dataframe_name)

### Getting the number of columns in the data frame: ncol(dataframe_name)

### Head of df: head(dataframe_name,n=number of rows to be shown)
### Tail of df: tail(dataframe_name,n=number of rows to be shown)

### str(dataframe_name) gives no of observations in each column of the df---str() stands for structure
### The word "Factor" in the summary is coz R assigns dummy variables to nominal or categorical values

### runif() is like rnorm()


### summary(dataframe_name) gives the summary of each columns

### df$abc[2] gives the value in second row of column abc

### To get the factors within a column, levels(df$col_name)

#############################################################################################

######## 49. BASIC OPERATIONS WITH A DATAFRAME

## To check if an obj is df is.data.frame(obj)

### Recycling do not work with dataframe....U get an error message

############################################################################################

######## 50. FILTERING A DATAFRAME

## dataframe[filter,]$col_name 
##  eg. df[df$abc<2 & df$pqr>40,]$country

## Logical = is "=="

#########################################################################

####### 51. INTRODUCTION TO QPLOT

dat = read.csv("P2-Demographic-Data.csv")
head(dat)
library(ggplot2)
qplot(data=dat,x=Internet.users)
qplot(data=dat,x=Income.Group,y=Birth.rate)
qplot(data=dat,x=Income.Group,y=Birth.rate,size=I(5))###Increases size
qplot(data=dat,x=Income.Group,y=Birth.rate,col=I("blue"),
      size=I(5))### Changes color to blue
qplot(data=dat,x=Income.Group,y=Birth.rate,geom="boxplot")## Created a boxplot

####################################################################################################

######### 52. VISUALIZING WITH QPLOT: PART I

qplot(data=dat,x=Internet.users,y=Birth.rate,colour=Income.Group,size=I(4))

##################################################################################

######## 52. BUILDING DATAFRAMES

# data.frame(col_name1=vector1,col_name2=vector2,col_name3=vector3)
#### You can use the same method for rbind() and cbind()

##################################################################################

######## 54. MERGING DATAFRAMES

# merged <- merge(df1,df2,by.x="Country.code",by.y="Code")
# We are adding df2 to df1. Country.code and Code are the common columns
# by.x is referring to df1 and by.y is referring to df2

## To remove duplicate columns
# merged$country = NULL.....coz, there were 2 columns with same date and we made one null

##########################################################################################

######## 55. VISUALIZING WITH QPLOT:PART II

### shape=I(17) puts triangular shapes...15-20 are solid shapes or google R plot shapes

### alpha=I(0.4) Sets the transparancy....It varies from 0 to 1






