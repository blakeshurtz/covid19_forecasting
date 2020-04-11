# function needed for visualization purposes
sigmoid = function(params, x) {
  params[1] / (1 + exp(-params[2] * (x - params[3])))
}

x = reg$x
y = reg$y

lm(log(y) ~ log(x), data = reg)


# fitting code
fitmodel <- nls(y~a/(1 + exp(-b * (x-c))), start=list(a=-6.1756e-02,b=5.9836e+04, c = 4.8589e+01))

# visualization code
# get the coefficients using the coef function
params=coef(fitmodel)

y2 <- sigmoid(params,x)
plot(y2,type="l")
points(y)

library(drc)
plot(y ~ x)
fit <- nls(y ~ SSlogis(x, Asym, xmid, scal), data = data.frame(x, y))


library(drc)
fm <- drm(y ~ x, type = "binomial", fct = LL.2())
plot(fm)
summary(fm)
