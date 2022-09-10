# install.packages("ggpubr",repos="https://cloud.r-project.org/",dependencies=TRUE)
# install.packages('Rcpp')
# install.packages('RcppEigen')
# install.packages('minqa')
# install.packages('lme4')
# library("ggpubr")
source('ETL/load.R')

hourmax<-max(hcrashes) #5:00
daymax<-max(dcrashes) #FRI
monthmax<-max(mcrashes) #OCT
yearmax<-max(ycrashes) #2016
neighborhoodmax<-max(ncrashes) #Westwood
typemax<-max(ucrashes) #MID-SIZE
mannermax<-max(moccrashes) #RER-END
rcpmax<-max(rcpcrashes) #DRY
weathermax<-max(wcrashes) #CLEAR

# 
# corr<-cor(data$MANNEROFCRASH,data$,method=c("pearson"))
# pval<-cor.test(data$MANNEROFCRASH,data$,method=c("pearson"))
# 
# corr
# pval


