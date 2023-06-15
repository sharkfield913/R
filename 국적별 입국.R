library(readxl)
entrance<-read_excel("C:/Users/인공지능프로그래밍실습실/Documents/B_JSW/2학년/국적별 입국_230615100459.xls")
str(entrance)
head(entrance)

colnames(entrance)<-c("country","JAN","FAB","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT","NOV","DEC")
entrance$country<-gsub(" ", "", entrance$country)
entrance

entrance|>nrow()
top5_country<-entrance[order(-entrance$JAN),]|>head(n=5)
top5_country

install.packages("reshape2")
library(reshape2)
top5_melt<-melt(top5_country,id.vars="country",variable.names='mon')
head(top5_melt)

library(ggplot2)
ggplot(top5_melt,aes(x=mon,y=value,group=country))+geom_line(aes(color=country))
ggplot(top5_melt,aes(x=mon,y=value,group=country))+geom_line(aes(color=country))+ggtitle("2020년 국적별 입국 수 변화 추이")+scale_y_continuous(breaks = seq(0,50000,50000))
ggplot(top5_melt,aes(x=mon,y=value,fill=country))+geom_bar(stat="identity",position = "dodge")
ggplot(top5_melt,aes(x=mon,y=value,fill=country))+geom_bar(stat="identity",position = "stack")

#확인문제
#1
3
#2
1 : geom_line()
2 : scale_y_continuous()
3 : ggtitle()
4 : seq()
#3
carName<-c("Porsche 911","The new GRANDEUR","All new Carnival")
test<-gsub(" ","",carName)
test
#4
library(ggplot2)
ggplot(diamonds,aes(x=carat,y=price,fill=clarity))+geom_dotplot(binwidth = 0.1,
                                                                color=NA)+ggtitle("다이아몬드 가격")


