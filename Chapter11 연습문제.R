#1
library(carData)
for(i in 1:ncol(Chile)){
  this.na<-is.na(Chile[,i])
  cat(colnames(Chile)[i],'\t',sum(this.na),'\n')
}



#2
library(carData)
no.whole<-nrow(Chile)
tmp<-sum(complete.cases(Chile))
no.na<-(no.whole-tmp)/no.whole
no.na



#3
tmp<-airquality$Ozone
tmp[is.na(tmp)]<-0
tmp
tmp<-airquality$Solar.R
tmp[is.na(tmp)]<-0
tmp



#4
tmp<-airquality$Solar.R
sort(tmp,decreasing = T)



#5
tmp<-airquality[order(airquality$Solar.R,decreasing = T),c('Month','Day','Solar.R')]
tmp



#6
str(airquality)
tmp<-airquality[order(airquality$Solar.R),c('Month','Day')]
tmp
tmp[1:10,]



#7
library(carData)
set.seed(1234)
idx<-sample(nrow(CES11),200)
tmp<-CES11[idx,'urban']
table(tmp)



#8
library(carData)
set.seed(1234)
idx<-sample(nrow(CES11),nrow(CES11)*.2)
tmp<-CES11[idx,'education']
table(tmp)



#9
x<-c("김밥","라면","쫄면","칼국수","아메리카노")
com<-combn(x,3)
ncol(com)
condi<-com[1,]=='라면'|com[2,]=='라면'|com[3,]=='라면'
com[,condi]



#10
library(carData)
df<-Leinhardt[complete.cases(Leinhardt),]
agg<-aggregate(df[,'infant'],by=list(대륙=df$region),mean)
df<-Leinhardt[complete.cases(Leinhardt),]
agg<-aggregate(df[,'infant'],by=list(산유국=df$oil),mean)
agg




#11
