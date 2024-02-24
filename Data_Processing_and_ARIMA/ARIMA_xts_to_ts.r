source('ARIMA_smoothen.r')

ts_Jan21PM25_Smooth = ts(xts_Jan21PM25_Smooth)
ts_Jan21NO_Smooth = ts(xts_Jan21NO_Smooth)
ts_Jan21NO2_Smooth = ts(xts_Jan21NO2_Smooth)
ts_Jan21NOx_Smooth = ts(xts_Jan21NOx_Smooth)
ts_Jan21SO2_Smooth = ts(xts_Jan21SO2_Smooth)


class(ts_Jan21SO2_Smooth)

ts_Jan21All_Smooth = cbind(ts_Jan21PM25_Smooth, ts_Jan21NO_Smooth[,4], ts_Jan21NO2_Smooth[,4], ts_Jan21NOx_Smooth[,4], ts_Jan21SO2_Smooth[,4])
#ts_Jan21All_Smooth

print('ARIMA_xts_to_ts')
print('ts_Jan21All_Smooth replace All')


