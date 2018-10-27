#Create vector of student names: divide into 2 groups
studentname=paste('S', 1:1000, sep='-')
#group1 = 60%
#group2 = 40%
#Split vector into 2 parts of 60% & 40%
y = studentname
length(y)

index= sample(length(y), size = .6 * length(y))
y[index]
y[-index]

#testing
x=101:200
length(x)
index = sample(length(x), size=.6 * length(x))
x[index]
x[-index]


#create a large dataframe
sname= paste('S', 1:1000, sep='-')
gender=sample(x=c('Male','Female'), size = 1000, prob=c(.6,.4), replace = T)
marks= ceiling(rnorm(1000, 60, 10))
df = data.frame(sname, gender, marks)
head(df)
table(df$gender)

#split DF into 2 parts 70% & 30%
#train = 70% of Df
#test = 30% of Df

length(df); nrow(df)
index2= sample(x=nrow(df), size= .7 * nrow(df))
df[1:5,]

train = df[index2,]
test = df[-index2,]
head(train)
nrow(train)
head(test)
nrow(test)

#using Caret ibrary
library(caret)
table(df$gender)
prop.table(table(df$gender))

index3=createDataPartition(y=df$gender, p=0.7, list = F)
length(index3)

(train2 = df[index3,])
(test2 = df[-index3,])

(t3a=table(train2$gender))
prop.table(t3a)
(t3b=table(test2$gender))
prop.table(t3b)
