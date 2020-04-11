#model 1- exponential
m1 = lm(log(y) ~ x, data = reg)
plot(reg$x, log(reg$y))
abline(m1)

### extrapolate
april_25 <-  as.numeric(mdy("04/25/2020") - ymd(max(reg$date)))
#may_25 <-  as.numeric(mdy("05/25/2020") - today() + 1)
#june_25 <-  as.numeric(mdy("06/25/2020") - today() + 1)

new_d = data.frame(x = seq(max(reg$x) + 1, max(reg$x) + april_25))

pred <- data.frame(x = new_d$x,
                   y = exp(predict(m1, newdata = new_d)),
                   date = seq(ymd(max(reg$date)) + 1, ymd("2020/04/25") , by = 1))

#### old shit

new_d <- data.frame(x = c(april_25 + nrow(reg), 
                          may_25 + nrow(reg), 
                          june_25 + nrow(reg)))



#model 2- sinusoidal
m2 = lm(log(y) ~ poly(x, 3), data = reg)
expected = data.frame(reg$x, m2$fitted.values)
plot(reg$x, log(reg$y))
points(expected, col = "red", type = 'l')