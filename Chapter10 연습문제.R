#1
#데이터 전처리

#2
#2

#3
#3

#4
library(Ecdat)
ds<-table(Hdma$self)
barplot(ds,main='자영업 여부')

ds<-table(Hdma$single)
pie(ds,main = '기혼 여부')

ds<-table(Hdma$uria)
boxplot(ds,main='실업률')

boxplot.stats(ds)

length(boxplot.stats(ds)$out)

deny.hir<-mean(Hdma$hir[Hdma$deny=='yes'])
approve.hir<-mean(Hdma$hir[Hdma$deny=='no'])
cat('승인 거절률 : ',dney.hir,approve.hir,'\n')



#add1
library(DAAG)
ds<-