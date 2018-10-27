library(rpart)
library(rpart.plot)
gender = sample(c('M','F'), size = 1000, prob = c(.6,.4), replace=T)
age = ceiling(rnorm(1000,35, 5))
buy = sample(c('Yes','No'), size = 1000, prob = c(.5,.5), replace=T)
df = data.frame(buy, age, gender)
head(df)

dtree = rpart(buy ~ gender + age, data = df, minsplit = 10, minbucket = 4, cp = .005) 
# complexity parameter (cp) = -1 (will create full tree)
# 

dtree
dtree$variable.importance
rpart.plot(dtree, cex=.8, nn=T)

