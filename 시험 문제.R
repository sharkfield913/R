#chapter 3
#1
a<-7
b<-9
c<-a*b
c

#2
a<-90
b<-90
c<-90
d<-360-(a+b+c)
d

#5
v<-c(92,43,55,28,19)

#12
d<-1:100
odd<-d[seq(1,100,2)]
odd[-c(41:50)]
pick<-odd[c(3,7,32)]
names(pick)<-c('3rd','7th','32th')
pick[-2]
pick[c('3rd')]<-c('3')
pick


#추가 3
price<-c(900,400,1100,1200,1800,1500)
names(price)<-c('milk','water','coke','sprite','juice','coffee')
a<-price[c('milk','coke')]
sum(a)





#chapter4
#1
#백터, 리스트, 팩터

#2
# 2번

#4
a<-25:150
condi<-a<100&a%%3==0
sum(condi)

#8
weight<-c(56,23,89,46,76,14,97,72,68,62,35)
names(weight)<-c('a','b','c','d','e','f','g','h','i','j','k')
weight
a <- sum(weight)-600
a
min(weight[weight>=a])

#12
account <- list(name = '하늘', number = 123-468-120566, balance = 4128750, history = c(-50000, +20000, -32500, -79000, +42000))
a <- c(account$history[account$history>0])
b <- c(account$history[account$history<0])
length(a)
length(b)

#추가 1
point <- c(7, 7, 8, 8, 9, 10, 10, 10, 11, 20)
answer_sheet <- c(1, 3, 2, 2, 4, 1, 5, 2, 3, 1)
mark <- c(1, 3, 1, 2, 4, 2, 5 ,2, 5, 1)
a <- point[answer_sheet == mark]
length(a)
sum(a)
point[point>= 9 & point<=11]<- 10
point
sum(point)





#chapter5
#1
#리스트, 백터, 팩터

#2
#A: 관측값, B: 변수

#12
is.matrix(InsectSprays)
str(InsectSprays)
tail(InsectSprays)
levels(InsectSprays[,'spray'])
table(InsectSprays[,'spray'])
InsectSprays.e<-subset(InsectSprays['spray']=='E')
mean(InsectSprays.e$count)





#chapter6
#6
#A: sink, B: result.txt,C: sink

#추가 3
setwd('C:/Rworks/ex15')
library(svDialogs)
summary(sleep)
user.input<-dlgInput('Group ID')$res
user.input
gid<-as.numeric(user.input)
gid




#chapter7
#2
n<-12
if(n%%2==1){
  type<-'odd'
}else{
  type<-'even'
}
print(type)

#4
mul<-1
for(i in 1:20){
  if(i%%2!=0){
    mul<-mul*i
  }
}
print(mul)

#12
apply(USArrests[,-3],2,sum)
apply(USArrests[,-3],2,mean)
rownames(USArrests[which.max(USArrests$Murder),])
USArrests[which.min(USArrests$Murder),'Murder']

#추가 1
library(Stat2Data)
data(ChildSpeaks)
diff<-function(data){
  result<-data-mean(data)
  return(result)
}
apply(ChildSpeaks[,c('Age','Gesell')],2,diff)

#추가 2
iodine<-80
i<-0

while (iodine>=0.01) {
  i<-i+1
  iodine<-1/2*iodine
}
print(i*8)

halflife<-function(amount,period=8,target=0.01){
  i<-0
  while (amount>=target) {
    i<-i+1
    amount<-1/2*amount
  }
  return(i*period)
}

source('myfunc.R')
halflife(80)
halflife(100,5,0.001)
halflife(200,15,0.0001)