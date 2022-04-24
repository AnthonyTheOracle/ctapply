
#library(ctapply)
#x<-electricdata$fuel
#bins <- seq(min(x), max(x), length.out = 10)
#hist(x, breaks = bins)

#bins <- seq(min(x), max(x), length.out = 20)
#hist(x, breaks = bins)

#library(survey)

#install.packages(car, dependencies = T)
#library(car)


## Cobb-Douglas cost function
#fm_all <- lm(log(cost/fuel) ~ log(output) +
#               log(labor/fuel) +
#               log(capital/fuel), data = electricdata)
#summary(fm_all)


## hypothesis of constant returns to scale
#linearHypothesis(fm_all, "log(output) = 1")


## log quadratic cost function
#fm_all2 <- lm(log(cost/fuel) ~ log(output) +
#                I(log(output)^2) +
#                log(labor/fuel) +
#                log(capital/fuel), data = electricdata)
#summary(fm_all2)

## More examples can be found in:
## help("Greene2003")
