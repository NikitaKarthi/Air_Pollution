source('ARIMA_to_xts.r')

#xts_Jan21PM25[,4]
xts_Jan21PM25Value = as.numeric(xts_Jan21PM25[,4])
#xts_Jan21PM25Value

xts_Jan21PM25_filled = na.interp(xts_Jan21PM25Value)
#xts_Jan21PM25_filled

xts_Jan21PM25_Fill <- xts_Jan21PM25
#xts_Jan21PM25_Fill

xts_Jan21PM25_Fill[,4] <- xts_Jan21PM25_filled
#xts_Jan21PM25_Fill

#xts_Jan21NO[,4]
xts_Jan21NOValue = as.numeric(xts_Jan21NO[,4])
#xts_Jan21NOValue

xts_Jan21NO_filled = na.interp(xts_Jan21NOValue)
#xts_Jan21NO_filled

xts_Jan21NO_Fill <- xts_Jan21NO
#xts_Jan21NO_Fill

xts_Jan21NO_Fill[,4] <- xts_Jan21NO_filled
#xts_Jan21NO_Fill

#xts_Jan21NO2[,4]
xts_Jan21NO2Value = as.numeric(xts_Jan21NO2[,4])
#xts_Jan21NO2Value

xts_Jan21NO2_filled = na.interp(xts_Jan21NO2Value)
#xts_Jan21NO2_filled

xts_Jan21NO2_Fill <- xts_Jan21NO2
#xts_Jan21NO2_Fill

xts_Jan21NO2_Fill[,4] <- xts_Jan21NO2_filled
#xts_Jan21NO2_Fill

#xts_Jan21NOx[,4]
xts_Jan21NOxValue = as.numeric(xts_Jan21NOx[,4])
#xts_Jan21NOxValue

xts_Jan21NOx_filled = na.interp(xts_Jan21NOxValue)
#xts_Jan21NOx_filled

xts_Jan21NOx_Fill <- xts_Jan21NOx
#xts_Jan21NOx_Fill

xts_Jan21NOx_Fill[,4] <- xts_Jan21NOx_filled
#xts_Jan21NOx_Fill

#xts_Jan21SO2[,4]
xts_Jan21SO2Value = as.numeric(xts_Jan21SO2[,4])
#xts_Jan21SO2Value

xts_Jan21SO2_filled = na.interp(xts_Jan21SO2Value)
#xts_Jan21SO2_filled

xts_Jan21SO2_Fill <- xts_Jan21SO2
#xts_Jan21SO2_Fill

xts_Jan21SO2_Fill[,4] <- xts_Jan21SO2_filled
#xts_Jan21SO2_Fill

xts_Jan21All_Fill <- xts_Jan21All
#xts_Jan21SO2_Fill

xts_Jan21All_Fill[,4] <- xts_Jan21PM25_filled
xts_Jan21All_Fill[,5] <- xts_Jan21NO_filled
xts_Jan21All_Fill[,6] <- xts_Jan21NO2_filled
xts_Jan21All_Fill[,7] <- xts_Jan21NOx_filled
xts_Jan21All_Fill[,8] <- xts_Jan21SO2_filled

#xts_Jan21All_Fill

print('ARIMA_missing_values')
print('xts_Jan21All_Fill replace All')
