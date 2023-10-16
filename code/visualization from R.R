#https://givitallugot.github.io/articles/2020-03/R-visualization-1-seoulmap
library(readxl)
library(ggmap)
library(ggplot2)
library(raster)
library(rgeos)
library(maptools)
library(rgdal)

#오류 찾기
#install.packages('rgeos', type='source')
#install.packages('rgdal', type='source')
#install.packages("gpclib", type="source")
#install.packages("gpclib")

a<-read_excel('C:/Users/dudtj/OneDrive - 숭실대학교 - Soongsil University/Desktop/CL/python/강서구 경진대회/동 기준 쓰레기통 및 생활인구수.xlsx') #시각화 데이터셋
a<-data.frame(a)
names(a)[names(a)=='행자부행정동코드']<-c('id')
a

map <- shapefile("C:/Users/dudtj/OneDrive - 숭실대학교 - Soongsil University/Desktop/CL/python/강서구 경진대회/EMD_201703/TL_SCCO_EMD.shp") #지리 정보 데이터셋
map <- spTransform(map, CRSobj = CRS('+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs'))
head(map)
new_map <- fortify(map, region = 'EMD_CD')
View(new_map)
new_map$id <- as.numeric(new_map$id)
new_map
View(seoul_map)
seoul_map <- new_map[new_map$id <= 11500700,]
seoul_map <- seoul_map[seoul_map$id >= 11500500,]
a$id<-as.numeric(a$id)
seoul_map
P_merge <- merge(new_map, a, by='id')
head(P_merge)

world <- map_data(map = 'world', region = '.')




ggplot() + geom_polygon(data = a, aes(x=위도, y=경도, group=id), fill = 'white', color='black')

ggplot() + geom_polygon(data = P_merge, aes(x=long, y=lat, group=group, fill = A))
plot <- ggplot() + geom_polygon(data = P_merge, aes(x=long, y=lat, group=group, fill = A))
plot + scale_fill_gradient(low = "#ffe5e5", high = "#ff3232", space = "Lab", guide = "colourbar")+ theme_bw() + labs(title = "서울시 A 분포") + theme(panel.grid.major.x = element_blank(), panel.grid.minor.x = element_blank(), panel.grid.major.y = element_blank(), panel.grid.minor.y = element_blank(), plot.title = element_text(face = "bold", size = 18, hjust = 0.5))
