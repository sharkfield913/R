library(readxl)
xlsdata<-read_excel("C:/Users/인공지능프로그래밍실습실/Documents/B_JSW/2학년/선별진료소_20230615103302.xls")
View(xlsdata)

data_raw<-xlsdata[,c(2:5)]
head(data_raw)

names(data_raw)
names(data_raw)<-c("state","city","name","addr")
names(data_raw)

table(data_raw$state)
barplot(table(data_raw$state))

deajeon_data<-data_raw[data_raw$state=='대전',]
head(deajeon_data)
nrow(deajeon_data)

library(ggmap)
ggmap_key <- "AIzaSyB0HPuOS6EDcIEjxLIk7u08dtrkI98cGfQ"
register_google(ggmap_key)

deajeon_data <- mutate_geocode(data = deajeon_data, location = addr, source = 'google')
head(deajeon_data)
head(deajeon_data$lon)

deajeon_map <- get_googlemap('대전', maptype = 'roadmap', zoom = 11)
ggmap(deajeon_map) + geom_point(data = deajeon_data, aes(x = lon, y = lat, color = factor(name)), size = 3)

deajeon_data_marker <- data.frame(lon = deajeon_data$lon, lat = deajeon_data$lat)
deajeon_map <- get_googlemap('대전', maptype = 'roadmap', zoom = 11, markers = deajeon_data_marker)
ggmap(deajeon_map) + geom_text(data = deajeon_data, aes(x = lon, y = lat), size = 3, label = deajeon_data$name)


#확인문제
#1
test<-mtcars(c(mtcars$mpg))
test
#2
library(ggmap)
ggmap_key <- "AIzaSyB0HPuOS6EDcIEjxLIk7u08dtrkI98cGfQ"
register_google(ggmap_key)

niagara_map <- mutate_geocode(data = niagara_map,location = c(43.08366248098039, -79.07433456178543), source = 'google')
niagara_map <- get_googlemap('niagara', maptype = 'roadmap', zoom = 11)
niagara_map_data_marker <- data.frame(lon = niagara_map_data$lon, lat = niagara_map_data$lat)
niagara_map <- ggmap(niagara_map_data_marker, extent = 'device') +
  geom_point(data = niagara_map_data_marker, aes(x = lon, y = lat), size = 3)

niagara_map
