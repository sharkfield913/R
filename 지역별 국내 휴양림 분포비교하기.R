library(readxl)
forest_example_data<-read_excel("C:/Users/인공지능프로그래밍실습실/Documents/B_JSW/2학년/전국휴양림표준데이터-20230615.xls")
colnames(forest_example_data)<-c("name","city","gubun","area","number","stay","city_new","code","codename")
str(forest_example_data)
head(forest_example_data)

library(descr)
freq(forest_example_data$city,plot=T,main='city')

city_table<-table(forest_example_data$city)
city_table
barplot(city_table)

library(dplyr)
count(forest_example_data,city) %>% arrange(desc(n))
count(forest_example_data,city_new) %>% arrange(desc(n))
count(forest_example_data,codename) %>% arrange(desc(n))

#확인문제
#1 
4
#2
library()
freq(forest_example_data$gubun,plot=T,main='gubun')
