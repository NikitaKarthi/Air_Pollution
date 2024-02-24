source('ARIMA_xts_to_ts.r')

#class(ts_Jan21All_Smooth)
#ts_Jan21All_Smooth_value = as.numeric(ts_Jan21All_Smooth[,4:8])
ts_Jan21PM25_Smooth_value = as.numeric(ts_Jan21PM25_Smooth[,4])
ts_Jan21NO_Smooth_value = as.numeric(ts_Jan21NO_Smooth[,4])
ts_Jan21NO2_Smooth_value = as.numeric(ts_Jan21NO2_Smooth[,4])
ts_Jan21NOx_Smooth_value = as.numeric(ts_Jan21NOx_Smooth[,4])
ts_Jan21SO2_Smooth_value = as.numeric(ts_Jan21SO2_Smooth[,4])

#Acf(ts_Jan21PM25_Smooth_value)
#Pacf(ts_Jan21PM25_Smooth_value)

#Acf(ts_Jan21NO_Smooth_value)
#Pacf(ts_Jan21NO_Smooth_value)

#Acf(ts_Jan21NO2_Smooth_value)
#Pacf(ts_Jan21NO2_Smooth_value)

#Acf(ts_Jan21NOx_Smooth_value)
#Pacf(ts_Jan21NOx_Smooth_value)

#Acf(ts_Jan21SO2_Smooth_value)
#Pacf(ts_Jan21SO2_Smooth_value)

#plot(Jan21DataPM25New[0:500], type='l', main='Jan21DataPM25New')
#plot(Jan21_PM25[0:500], type='l', main='Jan21_PM25')
#plot(Jan21DataPM25clean[0:500], type='l', main='Jan21DataPM25clean')

#hist(ts_Jan21All_Smooth_value)
#hist(diff(ts_Jan21All_Smooth_value))

#ts_Jan21All_Smooth_value

#plot(ts_Jan21All_Smooth[0:100,4], type='l')

print('ARIMA_Value_acf_plot')
print('ts_Jan21PM25_Smooth_value replace PM25')
