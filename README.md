## Price-Prediction-Using-ARIMA-Model.
The data collected on  price of petrol and diesel in Tamil Nadu for the period, 1st may 2017to 1st April 2022 is analyzed in this chapter applying methodology described in chapter II. 
The dataset was collected from https://www.petroldieselprice.com/. 
It consists information of 60 observations and three variables, it is attempted to determine a suitable time series model. 
# Descriptive Analysis
# Box Plot 
![image](https://github.com/Velkumar02/Price-Prediction-Using-ARIMA-Model./assets/136985446/66100b72-66a5-44f3-8cf1-2c9ea79301f7)
# Testing the Stationary
![image](https://github.com/Velkumar02/Price-Prediction-Using-ARIMA-Model./assets/136985446/015fc54e-391f-4aca-818e-ad8ce9671fee)
# Second Order differences
![image](https://github.com/Velkumar02/Price-Prediction-Using-ARIMA-Model./assets/136985446/fea4ef3c-5353-4b6e-8ce6-814ce1c218a8)
Differencing method is applied to the actual data for removing the non-stationarity. The second order differences Y‘t= Yt - Yt-1 -Yt-2 are calculated to the time series.
The time series of the Second differenced values of the monthly diesel price is stationary. 
Hence, the appropriate model can be determined to this stationary time series and the model can be used to forecasts.
# Forecasting
![image](https://github.com/Velkumar02/Price-Prediction-Using-ARIMA-Model./assets/136985446/8a909d82-3bc3-48ae-8720-4461098605e9)
