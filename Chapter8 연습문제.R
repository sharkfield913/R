#1 A:막대 B:히스토
#2
survey<-c(T,F,T,T,F,T,F,F,F,F)
ds<-table(survey)
barplot(ds,main = '찬반',col = colors)
colors()

#3
ds<-table(mtcars$cyl)
color<-c('tomato','salmon','peachpuff')
barplot(ds,main = '실린더 종류별 분포',col = color,beside = T,horiz = TRUE)

#4
ds<-sleep$extra
hist(ds,main = 'Histogram of sleep',xlab = 'Increase in hours of sleep',breaks = 4,col = colors)
colors()

#5
ds<-table(mtcars$cyl,mtcars$gear)
color<-c('tomato','salmon','peachpuff')
barplot(ds,main = 'Distribution of carburetors',col = color,beside = T)

#6
data(trees)
ds<-trees$Height
color.6<-rep('#f1faee',6)
color.6[3:5]<-'#e63946'
hist(ds,main = 'Histogram of Black Cherry Trees',col = color.6)
  
#7
par(mfrow=c(2,3),mar=c(5,4,4,3))

#8
male<-c(6.9,30.4,80.4)
female<-c(4.9,38.2,82.7)
ds<-rbind(male,female)
colnames(ds)<-c('samsung','apple','huawei')
barplot(ds,main = '성별에 따른 브랜드 선호도',
        col = c('#ffe65d','#00afb9'),legend.text = c('여자','남자'),
        horiz = T,beside = TRUE)

#9
holyday<-c(14,15,15,16,14,11,12)
holyday.actual<-c(15,35,38,36,34,32,32)
ds<-rbind(holyday,holyday.actual)
colnames(ds)<-c('한국','일본','독일','러시아','미국','프랑스','호주')
barplot(ds,main = '주요 국가별 공휴일 현황',beside = TRUE,
        col = c('grey','skyblue'),legend.text = c('공휴일 수','실제 쉬는 날'),
        args.legend = list(x='topright',bty='n',inset=c(0.7,-0.1)))







