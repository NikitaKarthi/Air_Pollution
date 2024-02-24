source('ARIMA_library_read_csv.r')



#Get the desired data
Jan21Alldata = Jan21AllOrg[5:nrow(Jan21AllOrg),]
Jan21AllOrg[0:10,]
colnames(Jan21Alldata) <- c('Index', 'From Date', 'To Date', 'PM25', 'NO', 'NO2', 'NOx', 'SO2')

#Create time series index.
rawIndexJan21All = c(Jan21Alldata['From Date'])
indexJan21All = unlist(rawIndexJan21All)
xts_indexJan21All = strptime(indexJan21All, format = c("%e-%m-%Y %H:%M"))

#Col names for dataframe
Jan21Alldata['Index'] <- lapply(Jan21Alldata['Index'], as.numeric)
Jan21Alldata['From Date'] <- lapply(Jan21Alldata['From Date'], strptime, format = c("%e-%m-%Y %H:%M"))
Jan21Alldata['To Date'] <- lapply(Jan21Alldata['To Date'], strptime, format = c("%e-%m-%Y %H:%M"))
Jan21Alldata['PM25'] <- lapply(Jan21Alldata['PM25'], as.numeric)
Jan21Alldata['NO'] <- lapply(Jan21Alldata['NO'], as.numeric)
Jan21Alldata['NO2'] <- lapply(Jan21Alldata['NO2'], as.numeric)
Jan21Alldata['NOx'] <- lapply(Jan21Alldata['NOx'], as.numeric)
Jan21Alldata['SO2'] <- lapply(Jan21Alldata['SO2'], as.numeric)
#Jan21Alldata[0:10,]

#convert to xts
xts_Jan21All = as.xts(Jan21Alldata, order.by = xts_indexJan21All)
#class(xts_Jan21All)
#xts_Jan21All[0:10,]

#Get the desired data
Jan21PM25data = Jan21PM25Org[5:nrow(Jan21PM25Org),]
colnames(Jan21PM25data) <- c('Index', 'From Date', 'To Date', 'PM25')

#Create time series index.
rawIndexJan21PM25 = c(Jan21PM25data['From Date'])
indexJan21PM25 = unlist(rawIndexJan21PM25)
xts_indexJan21PM25 = strptime(indexJan21PM25, format = c("%e-%m-%Y %H:%M"))

#Col names for dataframe
Jan21PM25data['Index'] <- lapply(Jan21PM25data['Index'], as.numeric)
Jan21PM25data['From Date'] <- lapply(Jan21PM25data['From Date'], strptime, format = c("%e-%m-%Y %H:%M"))
Jan21PM25data['To Date'] <- lapply(Jan21PM25data['To Date'], strptime, format = c("%e-%m-%Y %H:%M"))
Jan21PM25data['PM25'] <- lapply(Jan21PM25data['PM25'], as.numeric)
#Jan21PM25data[0:10,]

#convert to xts
xts_Jan21PM25 = as.xts(Jan21PM25data, order.by = xts_indexJan21PM25)
#class(xts_Jan21PM25)
#xts_Jan21PM25

#Get the desired data
Jan21NOdata = Jan21NOOrg[5:nrow(Jan21NOOrg),]
colnames(Jan21NOdata) <- c('Index', 'From Date', 'To Date', 'NO')

#Create time series index.
rawIndexJan21NO = c(Jan21NOdata['From Date'])
indexJan21NO = unlist(rawIndexJan21NO)
xts_indexJan21NO = strptime(indexJan21NO, format = c("%e-%m-%Y %H:%M"))

#Col names for dataframe
Jan21NOdata['Index'] <- lapply(Jan21NOdata['Index'], as.numeric)
Jan21NOdata['From Date'] <- lapply(Jan21NOdata['From Date'], strptime, format = c("%e-%m-%Y %H:%M"))
Jan21NOdata['To Date'] <- lapply(Jan21NOdata['To Date'], strptime, format = c("%e-%m-%Y %H:%M"))
Jan21NOdata['NO'] <- lapply(Jan21NOdata['NO'], as.numeric)
#Jan21NOdata[0:10,]

#convert to xts
xts_Jan21NO = as.xts(Jan21NOdata, order.by = xts_indexJan21NO)
#class(xts_Jan21NO)
#xts_Jan21NO

#Get the desired data
Jan21NO2data = Jan21NO2Org[5:nrow(Jan21NO2Org),]
colnames(Jan21NO2data) <- c('Index', 'From Date', 'To Date', 'NO2')

#Create time series index.
rawIndexJan21NO2 = c(Jan21NO2data['From Date'])
indexJan21NO2 = unlist(rawIndexJan21NO2)
xts_indexJan21NO2 = strptime(indexJan21NO2, format = c("%e-%m-%Y %H:%M"))

#Col names for dataframe
Jan21NO2data['Index'] <- lapply(Jan21NO2data['Index'], as.numeric)
Jan21NO2data['From Date'] <- lapply(Jan21NO2data['From Date'], strptime, format = c("%e-%m-%Y %H:%M"))
Jan21NO2data['To Date'] <- lapply(Jan21NO2data['To Date'], strptime, format = c("%e-%m-%Y %H:%M"))
Jan21NO2data['NO2'] <- lapply(Jan21NO2data['NO2'], as.numeric)
#Jan21NO2data[0:10,]

#convert to xts
xts_Jan21NO2 = as.xts(Jan21NO2data, order.by = xts_indexJan21NO2)
#class(xts_Jan21NO2)
#xts_Jan21NO2

#Get the desired data
Jan21NOxdata = Jan21NOxOrg[5:nrow(Jan21NOxOrg),]
colnames(Jan21NOxdata) <- c('Index', 'From Date', 'To Date', 'NOx')

#Create time series index.
rawIndexJan21NOx = c(Jan21NOxdata['From Date'])
indexJan21NOx = unlist(rawIndexJan21NOx)
xts_indexJan21NOx = strptime(indexJan21NOx, format = c("%e-%m-%Y %H:%M"))

#Col names for dataframe
Jan21NOxdata['Index'] <- lapply(Jan21NOxdata['Index'], as.numeric)
Jan21NOxdata['From Date'] <- lapply(Jan21NOxdata['From Date'], strptime, format = c("%e-%m-%Y %H:%M"))
Jan21NOxdata['To Date'] <- lapply(Jan21NOxdata['To Date'], strptime, format = c("%e-%m-%Y %H:%M"))
Jan21NOxdata['NOx'] <- lapply(Jan21NOxdata['NOx'], as.numeric)
#Jan21NOxdata[0:10,]

#convert to xts
xts_Jan21NOx = as.xts(Jan21NOxdata, order.by = xts_indexJan21NOx)
#class(xts_Jan21NOx)
#xts_Jan21NOx

#Get the desired data
Jan21SO2data = Jan21SO2Org[5:nrow(Jan21SO2Org),]
colnames(Jan21SO2data) <- c('Index', 'From Date', 'To Date', 'SO2')

#Create time series index.
rawIndexJan21SO2 = c(Jan21SO2data['From Date'])
indexJan21SO2 = unlist(rawIndexJan21SO2)
xts_indexJan21SO2 = strptime(indexJan21SO2, format = c("%e-%m-%Y %H:%M"))

#Col names for dataframe
Jan21SO2data['Index'] <- lapply(Jan21SO2data['Index'], as.numeric)
Jan21SO2data['From Date'] <- lapply(Jan21SO2data['From Date'], strptime, format = c("%e-%m-%Y %H:%M"))
Jan21SO2data['To Date'] <- lapply(Jan21SO2data['To Date'], strptime, format = c("%e-%m-%Y %H:%M"))
Jan21SO2data['SO2'] <- lapply(Jan21SO2data['SO2'], as.numeric)
#Jan21SO2data[0:10,]

#convert to xts
xts_Jan21SO2 = as.xts(Jan21SO2data, order.by = xts_indexJan21SO2)
#class(xts_Jan21SO2)
#xts_Jan21SO2



print('ARIMA_to_xts')
print('Jan21PM25_value <- as.numeric(xts_Jan21PM25[,4])')
print('xts_Jan21All replace All')
