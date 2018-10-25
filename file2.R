mtcars

(balls = c('Red','Blue','Green'))
sample(balls,size = 1)

round(3.468324,1)
signif(3.568723198,1)

(x= rnorm(100, mean=60, sd=10))
summary(x) #summary of x
quantile(x) #quantile
quantile(x, seq(0,1,.1)) #decile
quantile (x, seq(0,1,.01)) #percentile
fivenum(x)
boxplot(x)
abline(h=fivenum(x))
stem(x)
hist(x)
plot(density(x))
abline(v=60, col='red')
