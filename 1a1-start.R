# Starting with R

# asssign---
x1 = 3
x2 <- 3
#Print Value
x1
x2
#Assign and Print
(x3=3)
#Varibles in Env
ls()
# datasets available for use
data()
women
data(women)
?women
attach(mtcars)
?mtcars
mtcars$mpg
attach(mtcars)
mpg

#library
library()
#Elements
ls()
rm(list=ls())
rm (list = ls(all = TRUE))
x1
data(mtcars)
#help
?mean
x <- c(0:10, 50)
x
xm <- mean(x)
xm
c(xm, mean(x, trim = 0.10))
help(mean)

#Create Values
1:100
seq(0,100, by =2)
seq(0,200, by =1)
seq(1,100, by =2)
seq(1,10, length.out = 5)
rep(1,5)
rep(c(1,4), times=4)
rep(c(1,4),each=4)
rep(c(1,4), times = c(2,6))
x = c(0:10, 50:100)
x
#Version
version
Sys.Date()
getwd()
methods(class='matrix')
plot(1:10)
#Clean console by pressing CTRL + L in console
