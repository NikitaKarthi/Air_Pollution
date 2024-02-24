source('ARIMA_missing_values.r')

#xts_Jan21PM25[,4]
xts_Jan21PM25_fill_Value = as.numeric(xts_Jan21PM25_Fill[,4])
#xts_Jan21PM25Value

xts_Jan21PM25_smoothFit = ets(xts_Jan21PM25_fill_Value)
xts_Jan21PM25_smooth <- fitted(xts_Jan21PM25_smoothFit)
#xts_Jan21PM25_smooth

xts_Jan21PM25_Smooth <- xts_Jan21PM25_Fill
#xts_Jan21PM25_Smooth

xts_Jan21PM25_Smooth[,4] <- xts_Jan21PM25_smooth
#xts_Jan21PM25_Smooth[0:10]

#xts_Jan21NO[,4]
xts_Jan21NO_fill_Value = as.numeric(xts_Jan21NO_Fill[,4])
#xts_Jan21NOValue

xts_Jan21NO_smoothFit = ets(xts_Jan21NO_fill_Value)
xts_Jan21NO_smooth <- fitted(xts_Jan21NO_smoothFit)
#xts_Jan21NO_smooth

xts_Jan21NO_Smooth <- xts_Jan21NO_Fill
#xts_Jan21NO_Smooth

xts_Jan21NO_Smooth[,4] <- xts_Jan21NO_smooth
#xts_Jan21NO_Smooth[0:10]

#xts_Jan21NO2[,4]
xts_Jan21NO2_fill_Value = as.numeric(xts_Jan21NO2_Fill[,4])
#xts_Jan21NO2Value

xts_Jan21NO2_smoothFit = ets(xts_Jan21NO2_fill_Value)
xts_Jan21NO2_smooth <- fitted(xts_Jan21NO2_smoothFit)
#xts_Jan21NO2_smooth

xts_Jan21NO2_Smooth <- xts_Jan21NO2_Fill
#xts_Jan21NO2_Smooth

xts_Jan21NO2_Smooth[,4] <- xts_Jan21NO2_smooth
#xts_Jan21NO2_Smooth[0:10]

#xts_Jan21NOx[,4]
xts_Jan21NOx_fill_Value = as.numeric(xts_Jan21NOx_Fill[,4])
#xts_Jan21NOxValue

xts_Jan21NOx_smoothFit = ets(xts_Jan21NOx_fill_Value)
xts_Jan21NOx_smooth <- fitted(xts_Jan21NOx_smoothFit)
#xts_Jan21NOx_smooth

xts_Jan21NOx_Smooth <- xts_Jan21NOx_Fill
#xts_Jan21NOx_Smooth

xts_Jan21NOx_Smooth[,4] <- xts_Jan21NOx_smooth
#xts_Jan21NOx_Smooth[0:10]

#xts_Jan21SO2[,4]
xts_Jan21SO2_fill_Value = as.numeric(xts_Jan21SO2_Fill[,4])
#xts_Jan21SO2Value

xts_Jan21SO2_smoothFit = ets(xts_Jan21SO2_fill_Value)
xts_Jan21SO2_smooth <- fitted(xts_Jan21SO2_smoothFit)
#xts_Jan21SO2_smooth

xts_Jan21SO2_Smooth <- xts_Jan21SO2_Fill
#xts_Jan21SO2_Smooth

xts_Jan21SO2_Smooth[,4] <- xts_Jan21SO2_smooth
#xts_Jan21SO2_Smooth[0:10]

xts_Jan21All_Smooth <- xts_Jan21All_Fill
#xts_Jan21SO2_Fill

xts_Jan21All_Smooth[,4] <- xts_Jan21PM25_smooth
xts_Jan21All_Smooth[,5] <- xts_Jan21NO_smooth
xts_Jan21All_Smooth[,6] <- xts_Jan21NO2_smooth
xts_Jan21All_Smooth[,7] <- xts_Jan21NOx_smooth
xts_Jan21All_Smooth[,8] <- xts_Jan21SO2_smooth
#xts_Jan21All_Smooth[0:10,]
#xts_Jan21All_Fill

print('ARIMA_smoothen')
print('xts_Jan21All_Smooth replace All')


