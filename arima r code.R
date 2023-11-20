#clear all variables in workspace
rm(list = ls())


#load the forecasting package
library(fpp2)
data=read.csv(file.choose())
View(data)

#declare is the time series data
Y=ts(data[,2],start = c(2017,5),frequency = 12)

##############################################
#preliminary Analysis
##############################################
#Time plot
autoplot(Y)+
  ggtitle("Time Plot: Diseal")+
  ylab("Diseal Price")

#Data has a strong trend. investigate transformations.
#take the first difference of the data to remove the trend
DY=diff(Y)


#Time plot of differenced data
autoplot(DY)+
  ggtitle("Time Plot: Diseal")+
  ylab("Diseal Price")


#######################
#fit ARIMA model
#######################
fit_arima=auto.arima(Y,d=1,D=1,stepwise = FALSE,approximation = FALSE,trace = TRUE)
print(summary(fit_arima))
checkresiduals(fit_arima)

#########################
fcst=forecast(fit_arima,h=24)
autoplot(fcst)
autoplot(fcst,include = 100) #100 represents the last 100 value
print(summary(fcst))

####################################
## calculate MSE
####################################
mean(fit_arima$residuals^2)


autoplot(fit_arima)
#The red dots in the plot correspond to the roots of the polynomials  
#??(B),They are all inside the unit circle, as we would expect because R ensures the 
#fitted model is both stationary and invertible. 
#Any roots close to the unit circle may be numerically unstable, 
#and the corresponding model will not be good for forecasting.



##############################################
#Petrol Price
##############################################


#declare is the time series data
Y1=ts(data[,3],start = c(2017,5),frequency = 12)


#Time plot
autoplot(Y)+
  ggtitle("Time Plot: Petrol")+
  ylab("Petrol Price")

#Data has a strong trend. investigate transformations.
#take the first difference of the data to remove the trend
DY1=diff(Y1)


#Time plot of differenced data
autoplot(DY1)+
  ggtitle("Time Plot: Petrol")+
  ylab("Petrol Price")


#######################
#fit ARIMA model
#######################
fit_arima=auto.arima(Y1,d=1,D=1,stepwise = FALSE,approximation = FALSE,trace = TRUE)
print(summary(fit_arima))
checkresiduals(fit_arima)

#########################
fcst=forecast(fit_arima,h=24)
autoplot(fcst)
autoplot(fcst,include = 100) #100 represents the last 100 value
print(summary(fcst))

####################################
## calculate MSE
####################################
mean(fit_arima$residuals^2)


autoplot(fit_arima)
#The red dots in the plot correspond to the roots of the polynomials  
#??(B),They are all inside the unit circle, as we would expect because R ensures the 
#fitted model is both stationary and invertible. 
#Any roots close to the unit circle may be numerically unstable, 
#and the corresponding model will not be good for forecasting.