m<-matrix(c(9,8,7,11,5,2,3,9),nrow = 2)
m
rownames(m)<-c('x','y')
colnames(m)<-c('a','b','c','d')
m

blood<-c('A','O','AB','B','B')
rh<-c('+','+','-','+','+')
age<-c(21,30,43,17,26)
df<-data.frame(blood,rh,age)
colnames(df)
df.nb<-subset(df,blood!='B')

번호 <- c(1,2,3,4,5,6,7)
제목 <- c('그대랑', '다툼', '빨래', '두통', '보조개', '매듭', '이상해')
좋아요 <- c(16075, 8218, 12119, 738, 3200, 16144, 5110)
love <- data.frame(번호, 제목,좋아요)
love
best <-subset(love,좋아요==max(좋아요))
best

name<-c('스티브','엔더맨','크리퍼')
sub<-c('국어','역사','수학','과학','영어')
m<-matrix(c(97,100,83,95,92,88,82,90,91,87,100,96,76,89,95),nrow = 3,ncol = 5)
rownames(m)<-name
colnames(m)<-sub
mid<-data.frame(m)
mid
colMeans(mid)
rowMeans(mid)
f<-matrix(c(94,95,90,92,89,92,95,87,95,94,100,100,85,84,96),nrow = 3,ncol = 5)
final<-data.frame(f)
final
colMeans(final)
rowMeans(final)

is.matrix(InsectSprays)
str(InsectSprays)
tail(InsectSprays)
levels(InsectSprays[,'spray'])
table(InsectSprays[,'spray'])
InsectSprays.e<-subset(InsectSprays['spray']=='E')
mean(InsectSprays.e$count)