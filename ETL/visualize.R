source('ETL/analyze.R')

rotate_x <- function(x, y, color, title, angle) {
  plt<-barplot(x,names.arg=y,col=color,xaxt="n",main=title,space=1)
  text(plt,par("usr")[3],labels=y, srt=angle,adj=c(1.1,1.1),xpd=TRUE,cex=0.6) 
}

# ggscatter(data, x="", y="t", 
#           add="reg.line", conf.int=TRUE, 
#           cor.coef=TRUE, cor.method ="pearson",
#           xlab="", ylab="")

# hour<-rotate_x(hcrashes,hnames,'steelblue','Cincinnati Crashes by Hour',0)
# day<-rotate_x(dcrashes,dnames,'steelblue','Cincinnati Crashes by Day',50)
# month<-rotate_x(mcrashes,mnames,'steelblue','Cincinnati Crashes by Month',50)
# year<-rotate_x(ycrashes,ynames,'steelblue','Cincinnati Crashes by Year',50)
# neighborhood <- rotate_x(ncrashes,nnames,'steelblue','Cincinnati Crashes by Neighborhood',50)
# unit<-rotate_x(ucrashes,unames,'steelblue','Cincinnati Crashes by Type',50)
# weather<-rotate_x(wcrashes,wnames,'steelblue','Cincinnati Crashes by Weather',50)
# roadconditions<-rotate_x(rcpcrashes,rcpnames,'steelblue','Cincinnati Crashes by Road Condition',50)
# mannerofcrash<-rotate_x(moccrashes,mocnames,'steelblue','Cincinnati Crashes by Manner of Crash',15)

