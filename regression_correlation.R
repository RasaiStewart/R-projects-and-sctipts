#quantile(x, prob = c(0.25, NA)/100)

x <- rnorm(1000, 1, 3)
hist(x)
y <- rnorm(1000, 2, 5)
hist(y)

z <- 4*x+6*y
t <- x-y

mean(z) # ~4*1+6*2
var(z) # ~16*9+36*25
hist(z)

mean(t) # ~1-2
var(t) # ~9+25
hist(t)

cov(x,y)

#Correlation and regression.
#x <- 1:1000
#plot(x,y)
#y <- 2+3*x+rnorm(100, 0, 20)
library(plotly)
df <- data.frame(x,y)
df%>%
 plot_ly(x = -x) %>%
  add_marker(y = -y, marker = list(size=10), color = -y, name ='y')

cov(x,y)
(x-mean(x)*(y-mean(y)))/length(x-1) # Sample covariance
(x-mean(x)*(y-mean(y)))/length(x) # Population covariance

cor(x,y) #Sample correlation
cov(x,y)/(sd(x*sd(y))) # Sample correlation using formula.
# As the correclation coefficient approaches 0, the variables become dependant.

mylmmodel <- lm(y~x, data=df) # Create linear regression in r for response variable stopping ditance.
plot(carlmmodel)
