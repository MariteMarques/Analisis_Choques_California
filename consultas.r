agrupo_suma <- data.frame(aggregate(conteo ~ county_location, data=tabla,  FUN = sum))
colnames(agrupo_suma) <- c("county_location", "sum")


agrupo_media <- data.frame(aggregate(conteo ~ county_location, data=tabla,  FUN = mean))
colnames(agrupo_media) <- c("county_location", "AVG")

agrupo_varianza <- data.frame(aggregate(conteo ~ ï..county_location, data=tabla,  FUN = var))
colnames(agrupo_varianza) <- c("county_location", "VAR")


union <- merge(agrupo_media, agrupo_varianza)
union2 <- merge(agrupo_suma, union)

union <- merge(agrupo_media, agrupo_varianza)

barplot(union2$sum, names= union2$county_location)

tabla1= table(agrupo_suma$sum)

library(ggplot2)
library(scales)

ggplot(union2,aes(x=county_location,y=sum,fill=AVG))+ geom col()

ggplot(union2,aes(x=county_location,y=AVG,fill=VAR))

ggplot(tabla,aes(x=year,y=conteo,fill=county_location))+geom col()