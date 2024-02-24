source('ARIMA_Value_acf_plot.r')

library(urca)
#library(aTSA)
#library(tseries)

numOfDiff_Jan21PM25 <- ndiffs(ts_Jan21PM25_Smooth_value)
numOfDiff_Jan21PM25

Jan21PM25_dfFit <- ur.df(ts_Jan21PM25_Smooth_value)
#summary(Jan21PM25_dfFit)
#plot(Jan21PM25_dfFit)
#stationary

numOfDiff_Jan21NO <- ndiffs(ts_Jan21NO_Smooth_value)
numOfDiff_Jan21NO

Jan21NO_dfFit <- ur.df(ts_Jan21NO_Smooth_value)
#summary(Jan21NO_dfFit)
#plot(Jan21NO_dfFit)
#stationary

numOfDiff_Jan21NO2 <- ndiffs(ts_Jan21NO2_Smooth_value)
numOfDiff_Jan21NO2

Jan21NO2_dfFit <- ur.df(ts_Jan21NO2_Smooth_value)
#summary(Jan21NO2_dfFit)
#plot(Jan21NO2_dfFit)
#stationary

numOfDiff_Jan21NOx <- ndiffs(ts_Jan21NOx_Smooth_value)
numOfDiff_Jan21NOx

Jan21NOx_dfFit <- ur.df(ts_Jan21NOx_Smooth_value)
#summary(Jan21NOx_dfFit)
#plot(Jan21NOx_dfFit)
#stationary

numOfDiff_Jan21SO2 <- ndiffs(ts_Jan21SO2_Smooth_value)
numOfDiff_Jan21SO2

Jan21SO2_dfFit <- ur.df(ts_Jan21SO2_Smooth_value)
#summary(Jan21SO2_dfFit)
#plot(Jan21SO2_dfFit)
#stationary

ts_Jan21PM25_Stationary_value <- ts(ts_Jan21PM25_Smooth_value)
ts_Jan21NO_Stationary_value <- ts(ts_Jan21NO_Smooth_value)
ts_Jan21NO2_Stationary_value <- ts(diff(ts_Jan21NO2_Smooth_value))
ts_Jan21NOx_Stationary_value <- ts(ts_Jan21NOx_Smooth_value)
ts_Jan21SO2_Stationary_value <- ts(ts_Jan21SO2_Smooth_value)

xts_Jan21PM25_Stationary = xts_Jan21PM25_Smooth
xts_Jan21NO_Stationary = xts_Jan21NO_Smooth
xts_Jan21NO2_Stationary = xts_Jan21NO2_Smooth
xts_Jan21NOx_Stationary = xts_Jan21NOx_Smooth
xts_Jan21SO2_Stationary = xts_Jan21SO2_Smooth
#xts_Jan21All_Stationary = xts_Jan21All_Smooth


xts_Jan21PM25_Stationary[,4] = ts_Jan21PM25_Stationary_value
xts_Jan21NO_Stationary[,4] = ts_Jan21NO_Stationary_value
len_NO2 = length(xts_Jan21NO2_Stationary[,4]) - 1
xts_Jan21NO2_Stationary[0:len_NO2,4] = ts_Jan21NO2_Stationary_value
xts_Jan21NOx_Stationary[,4] = ts_Jan21NOx_Stationary_value
xts_Jan21SO2_Stationary[,4] = ts_Jan21SO2_Stationary_value

#xts_Jan21All_Stationary[,4] = ts_Jan21PM25_Stationary_value
#xts_Jan21All_Stationary[,5] = ts_Jan21NO_Stationary_value
#xts_Jan21All_Stationary[,6] = ts_Jan21NO2_Stationary_value
#xts_Jan21All_Stationary[,7] = ts_Jan21NOx_Stationary_value
#xts_Jan21All_Stationary[,8] = ts_Jan21SO2_Stationary_value

#xts_Jan21NO2_Stationary[0:10]

print('ARIMA_make_stationary')
print("ts_Jan21PM25_Stationary_value replace PM25")
print("xts_Jan21PM25_Stationary replace PM25")
#print("ts_Jan21PM25_Stationary replace PM25")




p = "
> a = c(1,7,3435,2,7,435,8,8)
> d = adf.test(a)
Warning message:
In adf.test(a) : p-value smaller than printed p-value
> d

	Augmented Dickey-Fuller Test

data:  a
Dickey-Fuller = -6.2455, Lag order = 1, p-value = 0.01
alternative hypothesis: stationary

> d[p.value]
Error: object 'p.value' not found
> d['p.value']
$p.value
[1] 0.01

> d['alternative']
$alternative
[1] 'stationary'

> d['statistic']
$statistic
Dickey-Fuller 
    -6.245461 

> d['method']
$method
[1] 'Augmented Dickey-Fuller Test'

"

f = 'xts_Jan21NO2_Stationary = xts_Jan21NO2_Smooth
xts_Jan21NO2_Stationary[,4] = ts_Jan21NO2_Stationary_value
xts_Jan21NO2_Stationary[0:5]

length(ts_Jan21NO_Stationary_value)

length(ts_Jan21NO2_Stationary_value)

ts_Jan21NO_Smooth[0:10]'

e = 'a:b 1
          a:c  2
b:c 3
          b:d  1
c:d 4
          c:e  1
d:e 5

nrow(xts_Jan21NO2_Stationary)
"2021-02-01 00:00:00" "2021-02-01 00:00:00"

a = xts_Jan21NO2_Stationary[0:(nrow(xts_Jan21NO2_Stationary)-1)]
a[,3] = xts_Jan21NO2_Stationary[2:nrow(xts_Jan21NO2_Stationary),3]
a[2:5]
a[,1]

a = xts_Jan21NO2_Smooth[0:(nrow(xts_Jan21NO2_Smooth)-1)]
a[,3] = xts_Jan21NO2_Smooth[2:nrow(xts_Jan21NO2_Smooth),3]
a

ts_Jan21NO2_Stationary = ts_Jan21NO2_Smooth[0:(nrow(ts_Jan21NO2_Smooth)-1)]
#ts_Jan21NO2_Stationary[,3] = ts_Jan21NO2_Smooth[2:nrow(ts_Jan21NO2_Smooth),3]
#ts_Jan21NO2_Stationary[,4] = ts_Jan21NO2_Stationary_value

length(ts_Jan21NO2_Smooth[2:nrow(ts_Jan21NO2_Smooth),3])
ts_Jan21NO2_Smooth[0:10]'

d = 'ts_Jan21PM25_Stationary <- ts_Jan21PM25_Smooth
ts_Jan21PM25_Stationary[,4] = ts_Jan21PM25_Stationary_value

ts_Jan21NO_Stationary <- ts_Jan21NO_Smooth
ts_Jan21NO_Stationary[,4] = ts_Jan21NO_Stationary_value

ts_Jan21NO2_Stationary <- ts_Jan21NO2_Smooth
ts_Jan21NO2_Stationary[,4] = ts_Jan21NO2_Stationary_value

ts_Jan21NOx_Stationary <- ts_Jan21NOx_Smooth
ts_Jan21NOx_Stationary[,4] = ts_Jan21NOx_Stationary_value

ts_Jan21SO2_Stationary <- ts_Jan21SO2_Smooth
ts_Jan21SO2_Stationary[,4] = ts_Jan21SO2_Stationary_value

ts_Jan21All_Stationary <- ts_Jan21All_Smooth
ts_Jan21All_Stationary[,4] = ts_Jan21PM25_Stationary_value
ts_Jan21All_Stationary[,5] = ts_Jan21NO_Stationary_value
ts_Jan21All_Stationary[,6] = ts_Jan21NO2_Stationary_value
ts_Jan21All_Stationary[,7] = ts_Jan21NOx_Stationary_value
ts_Jan21All_Stationary[,8] = ts_Jan21SO2_Stationary_value'

a = 
'
Augmented Dickey-Fuller Test
p-value - the prob that data has a unit root/non-stationary
If p-value is above a critical size, then not stationary.
Significant value is 0.05 means 5 percent.
If p-value is close to significant, then crit values should be used to judge.

p-value - the prob that null hypo is true. This means data has a unit root/non-stationary.

It is better for p-value to be smaller than 0.05 to consider data a stationary.

if Test-Statistic < Critical Values means reject null hypothesis - means data is stationary.
if Test-Statistic > Critical Values means failed to reject null hypothesis




If p-value is above a critical size, then not stationary.
Significant value is 0.05 means 5 percent.
If p-value is close to significant, then crit values should be used to judge.


IMPORTANT
Here, we noticed that statistic test value is greater than critical value.
p-value is also greater than significant value(0.05). 
So we can say the time series is non-stationary.

'

b = 
'
for kpss - null hypo - it is trend stationary
opp. of adfuller
p-value - prob that it is stationary.

'

c = 
'
#test = c("kpss", "adf", "pp"),
ndiffs(ts_Jan21SO2_Smooth_value)

numOfDiff_Jan21NO2 <- ndiffs(ts_Jan21NO2_Smooth_value)
numOfDiff_Jan21NO2

Jan21NO2_dfFit <- ur.df(ts_Jan21NO2_Smooth_value)
summary(Jan21NO2_dfFit)
plot(Jan21NO2_dfFit)
#close

numOfDiff_Jan21NO2 <- ndiffs(diff(ts_Jan21NO2_Smooth_value))
numOfDiff_Jan21NO2

Jan21NO2_dfFit <- ur.df(diff(ts_Jan21NO2_Smooth_value))
summary(Jan21NO2_dfFit)
plot(Jan21NO2_dfFit)
#close

numOfDiff_Jan21All <- ndiffs(ts_Jan21All_Smooth_value)
numOfDiff_Jan21All

Jan21All_dfFit <- ur.df(ts_Jan21All_Smooth_value)
summary(Jan21All_dfFit)
plot(Jan21All_dfFit)
#check

Jan21PM25_dfFit <- kpss.test(ts_Jan21PM25_Smooth_value)
Jan21PM25_dfFit

Jan21NO2_dfFit <- adf.test(ts_Jan21NO2_Smooth_value)
Jan21NO2_dfFit


a <- (coredata(xts_Jan21PM25_Smooth))
a
'




