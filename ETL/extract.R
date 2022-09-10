library(stringr)
library(dplyr)
library(tidyr)
library(DT)
library(scales)
setwd('/Users/moody/Desktop/tech/data/R/crashes')
df<-data.frame(read.csv('inf/cincinnati_traffic_crash_data__cpd.csv',na.strings=c("","NA")))


























# ncol(df)
# colnames(df)
# typeof(colnames(df))
# df[order(df$CRASHDATE), ]
# max(df$CRASHDATE)
# min(df$CRASHDATE)
# unique(df$UNITTYPE)
# unittype <- lapply(df$UNITTYPE, strsplit(df$UNITTYPE, ' - ',fixed=T))
# unittype <- strsplit(df$UNITTYPE, ' - ',fixed=T)
# str_replace_all(df$UNITTYPE,)
# empty <- character()
# for (i in 1:length(unittype)){
#   empty[i] <- unittype[[i]][2]
# 
# }
# cut <- grep('[0-9]+ - ', df$UNITTYPE, value=TRUE)
# length(df$UNITTYPE)
# unique(empty)
# typeof(unittype)
# typeof(unittype[0][0])
# unittype
# df$UNITTYPE[df$UNITTYPE] <- data.frame(empty)
# df$UNITTYPE
# unittype
# str_split(string, pattern, n = Inf, simplify = FALSE)






