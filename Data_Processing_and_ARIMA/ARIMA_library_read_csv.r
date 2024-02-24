library(forecast)
library(xts)
library(rsample)


Jan21AllOriginal = read.csv('Data/Jan21all.csv')
Jan21PM25Original = read.csv('Data/Jan21PM25.csv')
Jan21NOOriginal = read.csv('Data/Jan21NO.csv')
Jan21NO2Original = read.csv('Data/Jan21NO2.csv')
Jan21NOxOriginal = read.csv('Data/Jan21NOx.csv')
Jan21SO2Original = read.csv('Data/Jan21SO2.csv')
#dim(Jan21AllOriginal)
#Jan21AllOriginal[0:10,]


#Jan21PM25Original
dim(Jan21AllOriginal)
nrow(Jan21AllOriginal)


Jan21PM25_tr_test <- initial_time_split(Jan21PM25Original, prop = 3/4)
TrainingJan21PM25 <- training(Jan21PM25_tr_test)
TestingJan21PM25 <- testing(Jan21PM25_tr_test)
Jan21PM25_tr_val <- initial_time_split(TrainingJan21PM25, prop = 2/3)
Jan21PM25Org <- training(Jan21PM25_tr_val)
ValidationJan21PM25 <- testing(Jan21PM25_tr_val)


write.csv(TestingJan21PM25,"TestTrainValid/TestingJan21PM25.csv")
write.csv(ValidationJan21PM25,"TestTrainValid/ValidationJan21PM25.csv")
write.csv(Jan21PM25Org,"TestTrainValid/Jan21PM25Org.csv")


Jan21NO_tr_test <- initial_time_split(Jan21NOOriginal, prop = 3/4)
TrainingJan21NO <- training(Jan21NO_tr_test)
TestingJan21NO <- testing(Jan21NO_tr_test)
Jan21NO_tr_val <- initial_time_split(TrainingJan21NO, prop = 2/3)
Jan21NOOrg <- training(Jan21NO_tr_val)
ValidationJan21NO <- testing(Jan21NO_tr_val)


write.csv(TestingJan21NO,"TestTrainValid/TestingJan21NO.csv")
write.csv(ValidationJan21NO,"TestTrainValid/ValidationJan21NO.csv")
write.csv(Jan21NOOrg,"TestTrainValid/Jan21NOOrg.csv")


Jan21NO2_tr_test <- initial_time_split(Jan21NO2Original, prop = 3/4)
TrainingJan21NO2 <- training(Jan21NO2_tr_test)
TestingJan21NO2 <- testing(Jan21NO2_tr_test)
Jan21NO2_tr_val <- initial_time_split(TrainingJan21NO2, prop = 2/3)
Jan21NO2Org <- training(Jan21NO2_tr_val)
ValidationJan21NO2 <- testing(Jan21NO2_tr_val)


write.csv(TestingJan21NO2,"TestTrainValid/TestingJan21NO2.csv")
write.csv(ValidationJan21NO2,"TestTrainValid/ValidationJan21NO2.csv")
write.csv(Jan21NO2Org,"TestTrainValid/Jan21NO2Org.csv")


Jan21NOx_tr_test <- initial_time_split(Jan21NOxOriginal, prop = 3/4)
TrainingJan21NOx <- training(Jan21NOx_tr_test)
TestingJan21NOx <- testing(Jan21NOx_tr_test)
Jan21NOx_tr_val <- initial_time_split(TrainingJan21NOx, prop = 2/3)
Jan21NOxOrg <- training(Jan21NOx_tr_val)
ValidationJan21NOx <- testing(Jan21NOx_tr_val)


write.csv(TestingJan21NOx,"TestTrainValid/TestingJan21NOx.csv")
write.csv(ValidationJan21NOx,"TestTrainValid/ValidationJan21NOx.csv")
write.csv(Jan21NOxOrg,"TestTrainValid/Jan21NOxOrg.csv")


Jan21SO2_tr_test <- initial_time_split(Jan21SO2Original, prop = 3/4)
TrainingJan21SO2 <- training(Jan21SO2_tr_test)
TestingJan21SO2 <- testing(Jan21SO2_tr_test)
Jan21SO2_tr_val <- initial_time_split(TrainingJan21SO2, prop = 2/3)
Jan21SO2Org <- training(Jan21SO2_tr_val)
ValidationJan21SO2 <- testing(Jan21SO2_tr_val)


write.csv(TestingJan21SO2,"TestTrainValid/TestingJan21SO2.csv")
write.csv(ValidationJan21SO2,"TestTrainValid/ValidationJan21SO2.csv")
write.csv(Jan21SO2Org,"TestTrainValid/Jan21SO2Org.csv")


Jan21All_tr_test <- initial_time_split(Jan21AllOriginal, prop = 3/4)
TrainingJan21All <- training(Jan21All_tr_test)
TestingJan21All <- testing(Jan21All_tr_test)
Jan21All_tr_val <- initial_time_split(TrainingJan21All, prop = 2/3)
Jan21AllOrg <- training(Jan21All_tr_val)
ValidationJan21All <- testing(Jan21All_tr_val)


write.csv(TestingJan21All,"TestTrainValid/TestingJan21All.csv")
write.csv(ValidationJan21All,"TestTrainValid/ValidationJan21All.csv")
write.csv(Jan21AllOrg,"TestTrainValid/Jan21AllOrg.csv")


#dim(Jan21AllOrg)
#dim(TestingJan21All)
#dim(ValidationJan21All)


print('ARIMA_library_read_csv')
print('Jan21AllOrg, TestingJan21All, ValidationJan21All')
print('Jan21AllOrg replace All replace by PM25, NO, NO2, NOx, SO2')
















