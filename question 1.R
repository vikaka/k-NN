library(stats)
library(tseries)
library(forecast)


jojo <- read.csv("jojo.csv", quote = " ", header = FALSE)
jojo_timeseries <- ts(jojo)
jojo_diff <- diff(jojo_timeseries)
# since the data used has a time varying trend we use order of differencing to be 2

adf.test(jojo_diff)
# p-value significantly small

Box.test(jojo_diff, type = "Ljung-Box")
kpss.test(jojo_diff)


acf(jojo_diff)

# There is a sharp drop in lag 6 autocorrelation of the differenced time series 
#we can consider the the MA terms at 6

pacf(jojo_diff)
# a sharp cutoff is seen at lag 6 for PACF, hence the Ar term can be considered at 6


jojo_fit_101 <- arima(jojo_timeseries,order = c(1,0,1), method = "ML")
predicted_jojo <- predict(jojo_fit_101,11)

plot(jojo_timeseries, xlim =c(1,100), ylim = c(0,30))
lines(predicted_jojo$pred, col = "blue")

lines(predicted_jojo$pred+predicted_jojo$se, col = "red")
lines(predicted_jojo$pred-predicted_jojo$se, col = "red")

