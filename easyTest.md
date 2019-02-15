# Solution for the Easy Test


## Code
```
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
```
## Console Output
```
> #Loading the changepoint and EnvCpt packages
> library("changepoint")
> library("EnvCpt")
> #Creating normal distributed data
> test <- c(rnorm(50,0,1),rnorm(50,5,1))
> test
  [1] -0.04259808 -0.14933348  0.98201148  0.11850113  0.32571674  1.67848953 -1.28933114
  [8]  0.06072646 -0.25110159  0.07273888  0.37569674 -1.07852664  0.72504843  1.06391161
 [15]  0.51678023 -0.89339488  1.42576966 -1.77793957 -1.03792679 -1.23695028  0.14022590
 [22]  0.79867029  0.41781313  0.94530554 -0.59416693  0.15873031  0.75880449 -0.21499758
 [29] -0.01313457  0.02622594 -0.26762730  0.65964036  0.09009949  1.18257928 -3.88455201
 [36]  0.27148606  0.93570448 -0.37352337  0.53489156 -2.53356045  1.64392697  0.90763141
 [43]  0.57394231 -0.14724760  0.13213893  0.20208666 -0.36804857  0.54847606 -0.18045233
 [50]  0.54049438  6.51958991  4.33990511  5.12915978  5.25257397  6.44396358  6.60112014
 [57]  6.41438485  3.49672297  5.04493733  5.74142475  6.09987107  5.24951875  3.78099683
 [64]  4.51538590  5.21792957  4.33727222  3.42976786  5.85253444  5.38426534  4.38095751
 [71]  5.15240447  6.07771213  4.34942703  3.94440642  3.99966521  5.90337375  4.02105589
 [78]  4.52345092  5.42929581  5.65660485  4.47024062  7.79605417  5.87213327  4.15371466
 [85]  5.60967653  4.65224983  5.03513250  6.04244471  5.86760721  6.36455164  3.99679943
 [92]  5.32295296  4.44439816  4.50474823  5.54910801  4.19883523  4.40719424  4.04367444
 [99]  4.65742814  3.64044063
> ts.plot(test)
> #Generating mean, meancpt+AR(1) and meancpt+AR(2) models from EnvCpt package
> envcptTS <- envcpt(test, c(1,5,6))
Fitting 3 models
  |=============================                                                          |  33%
> #Plotting the results
> plot(envcptTS)
```
## Plots
**Test TimeSeries Plot**

![testTS](https://github.com/aditya-sam/RTimeSeries/blob/master/Images/testPlot.png)


**Plot exhibiting the change in AR1 and AR2 algorithms**

![EnvCptPlot](https://github.com/aditya-sam/RTimeSeries/blob/master/Images/EnvCptPlot.png)
