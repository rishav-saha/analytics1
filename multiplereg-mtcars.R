#https://cran.r-project.org/web/packages/olsrr/olsrr.pdf
#install.packages('olsrr')
library(olsrr)
names(mtcars)
mtcars[,c('disp','hp','wt','qsec')]

model = lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
k = ols_step_all_possible(model)
plot(k)
k
fit3 = lm(mpg ~ hp + wt + qsec, data = mtcars)
par(mfrow=c(2,2))
plot(fit3)
summary(lm(mpg ~ wt, data=mtcars))
summary(lm(mpg ~ wt+ hp, data=mtcars))

fit4 = lm(mpg ~ . , data=mtcars)
summary(fit4)
AIC(fit3)
AIC(fit4)
