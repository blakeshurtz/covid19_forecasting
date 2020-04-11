library(readxl)
###import sheet manually
chin_reg <- reg

#First death on 1/11, row 12
chin_reg <- chin_reg[12:nrow(chin_reg),]
chin_reg$x = seq(1:nrow(chin_reg))

#model 1- exponential
m1 = lm(log(y) ~ x, data = chin_reg)
plot(chin_reg$x, log(chin_reg$y))
abline(m1)

#model 2- sigmoidal
m2 = lm(log(y) ~ poly(x,5), data = chin_reg)
expected = data.frame(chin_reg$x, m2$fitted.values)
plot(chin_reg$x, log(chin_reg$y))
points(expected, col = "red", type = 'l')

### extrapolate
library(lubridate)
tail(chin_reg)
mdy("04/25/2020") - today() + 1
mdy("05/25/2020") - today() + 1
mdy("06/25/2020") - today() + 1


new_d <- data.frame(x = c(27 + nrow(chin_reg), 
                          57 + nrow(chin_reg), 
                          88 + nrow(chin_reg)))

predict(m2, newdata = new_d, interval = "confidence")

new_x <- data.frame(x = seq(1:168))
new_y <- predict(m2, newdata = new_x)

plot(new_x$x, new_y)


exp(14.1)
exp(21.1)
exp(28.4)

###spline

library(splines)
knots_x <- quantile(chin_reg$x, probs=c(0.25, .5, 0.75)) #setting knots at default IQR
bounds_x <- c(20, 80) #assuming no change in temp before valve is 20% open and after 80% closed 
m3 <- lm(log(y) ~ ns(chin_reg$x, knots=knots_x, Boundary.knots = bounds_x), data = chin_reg)
spline <- predict(m3, newdata=data.frame(chin_reg$x))

plot(chin_reg$x, log(chin_reg$y))
points(as.data.frame(cbind(chin_reg$x,spline)), pch=4, col='blue')

