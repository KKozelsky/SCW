#First R Command
print("Good Afternoon")
#variable- Use Alt+dash to get <- 
#don't start variable with a number
name <- "jane"
price <- 3.99
print(price)
#list variables
ls()
#remove variable
rm(price)
mass <- 47.5
age <- 122
mass <- mass*2.3
age <- age-20
height <- height+20
mass <- 64
sqrt(64)
res <- sqrt(mass)
#applying a function to a variable causes the function to output when that variable is entered
res
#to show directory
getwd()
#pop up info in bottom right
help(print)
?print
#install a package
install.packages("knitr")
#load package
library(knitr)
#use quotations for character data ie not numbers
#changing data types
score <- 79
#"double"
typeof(score)
score <- 79L
#"integer"
is.integer(score)
typeof(is.integer(score))
#assigning vectors, diff elements of the same type
v <- c(4,5,6)
v <- c(1:3,45)
#colon btwn numbers = those numbers and the ones between
length(v)
?c
str(v)
head(v, n=2)
tail(v, n=2)
#manipulating vectors
v <- c(v,56)
str(v)
#making a matrix
m <- matrix(c(1:18),3,6)
m
#matrix(data,rows,columns)
dim(m)
cont <- factor(c("asia","europe","america","africa","ocenia"))
str(cont)
l <- list("Afghanistan",1952,88787)
print(l)
typeof(l)
str(l)
items <- c("chicken","soup","salad","tea")
states <- factor(c("solid","liquid","solid","liquid"))
cost <- c(4.99,2.99,3.29,1.89)
myorder <- list(items,states,cost)
str(myorder)
print(myorder)
myorder_df <- data.frame(items,states,cost)
print(myorder_df)
str(myorder_df)
dim(myorder_df)
help(factor)
#subseting variables
v <- c(2:10)
#pull out the bracketed position
v[2]
v[c(3:6)]
#pull out everything except bracketed position

v[-c(3:6)]
#lists can pull out entire vectors
myorder[1]
#for matrixes: matrix [row,column]
myorder_df[1:3, ]
#subset by name
myorder_df$states
x <- myorder_df$states
x

v <- c(1,5,3,4,5)
# == is equal to
v1 <- v[v==5]
v1
v==5
v>1
v>=1
v<=1
df1 <- myorder_df[myorder_df$states=="solid",]
df1
df2 <- myorder_df[myorder_df$cost>3,]
df2
#analyzing gapminder
#export excels as .csv (use read.csv command)
data <- read.table("gapminder.txt",header=TRUE)
head(data)
tail(data)
str(data)
typeof(data)
x1 <- data[,c(3,5)]
head(x1)
data$country
data[data$country=="Sweden",]
unique(data[,1])
unique(data[,2])
unique(data[,3])
#life exp below 70
data[data$lifeExp<70,]
#if it doesn't display correctly, set it as a variable and use head/tail