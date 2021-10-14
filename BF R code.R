library(fpp)
library(fpp2)
library(TTR)

library(readxl)
Final <- read_excel("C:/Users/chinm/Desktop/Coursework/Sem 2/Business forecasting/Final.xlsx")
View(Final)

t1<- ts(Final$footfalls,frequency=365, start= c(2011,09))
t1
str(t1)
class(t1)
plot(t1)

#wind<- window(time_series, start= c(2013))
class(wind)
plot(wind)
fit <-window(t1)
#forecast
test <- forecast(fit, h=3)
Acf(fit)

#Mean forecast
mean_forecast <- meanf(t1,5)
plot(mean_forecast)

#Naive
naive_forecast<- naive(t1)
plot(naive_forecast)

naive_forecast1<- naive(t1,5, level= c(50,99))
plot(naive_forecast1)

#RWF (random work f)
rwf_forecast<- rwf(t1)
plot(rwf_forecast)

#S Naive
snaive_forecast<- snaive(t1)
plot(snaive_forecast)

#Moving Average
ma5_forecast<- ma(t1, order=5)
plot(ma5_forecast)
lines(ma5_forecast, col="Red")
ma9_forecast<- ma(t1, order=9)
ma20_forecast<- ma(t1, order=20)
plot(ma9_forecast)
plot(ma20_forecast)

#Exponention Time Series
ets(t1)
ets_forecast <- ets(t1)
attributes(ets)
attributes(ets_forecast)
ets_forecast$mse