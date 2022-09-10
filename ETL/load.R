source('ETL/transform.R')
data<-data.frame(read.csv('inf/crash_data.csv',na.strings=c("","NA")))

