install.packages("ggmap")
library(ggmap)

register_google(key="AIzaSyB0HPuOS6EDcIEjxLIk7u08dtrkI98cGfQ")
gg_seoul<-get_googlemap("seoul",maptype='roadmap')
ggmap(gg_seoul)

library(dplyr)
library(ggplot2)
geo_code<-enc2utf8("대전역") %>% geocode()
geo_data<-as.numeric(geo_code)

get_googlemap(center = geo_data,maptype = "roadmap",zoom = 13) %>% 
  ggmap()+
  geom_point(data = geo_code,aes(x=geo_code$lon,y=geo_code$lat))



#확인문제
get_googlemap(center = c(127.0276,37.49795),maptype = "roadmap",zoom = 15) %>% ggmap()



library(ggmap)
register_google(key="AIzaSyB0HPuOS6EDcIEjxLIk7u08dtrkI98cGfQ")
gg_busan<-get_googlemap("busan",maptype = "roadmap")
ggmap(gg_busan)