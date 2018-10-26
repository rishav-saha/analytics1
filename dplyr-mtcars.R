#analysis of dataset mtcars using dplyr
library(dplyr)
?mtcars
mtcars
#structure of a Data set
str(mtcars) #structure
dim(mtcars) #dimensions
head(mtcars) 
names(mtcars) #column names
rownames(mtcars) #rownames
summary(mtcars) #Summary of dataset

#summary activities on mtcars
t1= table(mtcars$am)
pie(t1)
19/32 * 360
pie(t1, labels=c('Auto','Manual'))

table(mtcars$gear)
t2= table(mtcars$gear)
pie(t2)
barplot(t2, col=1:3, xlab='Gears', ylab='No. of Cars', ylim=c(0,20))
barplot(t2, col=1:3, horiz = T)
pie(t2, labels=c('3 gears','4 gears','5 gears'))
pie(t2, labels=c('3 gears','4 gears','5 gears'), col=c('blue','red','yellow'))

#using dplyr %>% is chaining function
mtcars %>% select(mpg, gear) %>% slice(c(1:5, 10))

#select for columns, slice for rows
mtcars %>% arrange(mpg) #ascending order of mileage
mtcars %>% arrange(am, desc(mpg)) %>% select(rownames(am, mpg)) #ascending order of am, descending order of mpg

mtcars %>% mutate(rn= rownames(mtcars)) %>% select(rn, mpg) #display rownames along with data

mtcars %>% slice(c(1,5,7))
mtcars %>% sample_n(3)
mtcars %>% select(sample(x=c(1:11), size=2)) %>% head

mtcars %>% mutate(newmpg = mpg*2) %>% mutate(rn= rownames(mtcars)) %>% select(rn, mpg, newmpg) %>% head

#type of Tx, mean(mpg)
mtcars %>% group_by(am) %>% summarise(MeanMPG = mean(mpg))
mtcars %>% group_by(am) %>% summarise(MeanMPG = mean(mpg), MaxHP = max(hp), MinWT = min(wt))

mtcars %>% group_by(gear) %>% summarise(mean(mpg), max(hp), min(wt))
