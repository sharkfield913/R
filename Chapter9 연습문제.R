#1
library(carData)
ds<-MplsStops$race
pie(ds,main = '인종 비율',radius = 1)





#2
library(DAAG)
data("greatLakes")
ds<-data.frame(year=1918:2009,greatLakes)
plot(ds$year,ds$Erie,main='michHuron호 수위',type='b',lty=1,xlab='연도',ylab='수위',col='red')
plot(ds$year,ds$michHuron,main='michHuron호 수위',type='b',lty=1,xlab='연도',ylab='수위')
plot(ds$year,ds$StClair,main='michHuron호 수위',type='b',lty=1,xlab='연도',ylab='수위')




#3
library(DAAG)
ds<-cfseal$weight
boxplot(ds,main='물개의 체중')
boxplot.stats(cfseal$heart)


#4
library(DAAG)
data("greatLakes")
ds<-data.frame(greatLakes)
plot(ds$Erie,main='michHuron호와 Erie호 수위',pch=19)
plot(ds$michHuron,main='michHuron호와 Erie호 수위',pch=19)



#5