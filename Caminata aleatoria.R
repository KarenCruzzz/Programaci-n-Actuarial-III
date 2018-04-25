x<-c(rnorm(10),runif(10), rnorm(10,1))
f<-gl(3,10)
f

tapply(x, f, mean)
str(split)
split(x,f)
lapply(split(x,f), mean)

library(datasets)
deboug(lm)

summary(airquality)
m<- matrix(rnorm(100),10,10)
str(m)
summary(m)

s<-split(airquality,airquality$Month)
str(s)

x<-rnorm(10)
x
y<-rnorm(10,50,5)
y
summary(x)
summary(y)
