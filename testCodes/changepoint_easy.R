#Loading the changepoint and EnvCpt packages
library("changepoint")
library("EnvCpt")
#Creating normal distributed data
test <- c(rnorm(50,0,1),rnorm(50,5,1))
test
ts.plot(test)
#Generating mean, meancpt+AR(1) and meancpt+AR(2) models from EnvCpt package
envcptTS <- envcpt(test, c(1,5,6))
#Plotting the results
plot(envcptTS)
