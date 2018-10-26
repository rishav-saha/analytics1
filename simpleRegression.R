#Simple Regression

women
fit1=lm(weights ~ height, data=women)
summary(fit1)

#predict for ht = 69.5 and 70.5
(new = data.frame(height=c(69.7, 70.5)))
(p1 = predict(fit1, newdata =new))
cbind(new, round(p1, digits = 1))

plot(fit1)


#predict mpg for wt = 2 & 3
names(mtcars)
fit2 = lm(mpg ~ wt, data= mtcars)
range(mtcars$wt)
