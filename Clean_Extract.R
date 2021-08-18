install.packages("RSocrata")
LRidership <- read.socrata("https://data.cityofchicago.org/resource/5neh-572f.json")
LRidership <- LRidership[c(1:3,5)]
LRidership$station_id <- as.integer(LRidership$station_id)
LRidership$rides<- as.integer(LRidership$rides)
LRidership$date <- as.Date(LRidership$date)
head(LRidership)
final.LRidership <- subset(LRidership, LRidership$date > '2018-01-01')
final.LRidership <- final.LRidership[order(final.LRidership$date),]

write.csv(final,'Lridership.csv',row.names=FALSE)

head(final.LRidership)
unique(final.LRidership$stationname)

L_STationNAmes <- read_csv("L-STationNAmes.csv")
L_STationNAmes$CommunityName <-tolower(L_STationNAmes$CommunityName)
df<- merge(L_STationNAmes,Community_Areas, by = 'CommunityName', all.x = TRUE)
head(df)
df$stationname <- tolower(df$stationname)
Lridership$stationname <- tolower(Lridership$stationname)

Lridership <- read_csv("Lridership.csv")
final<- merge(Lridership,df, by = 'stationname', all.x = TRUE)

taxi<- rbind(Taxi_Data_Set_2018,Taxi_Data_Set_2019,Taxi_Data_Set_2020)
write.csv(taxi,'taxi.csv',row.names=FALSE)
head(taxi)

L_STationNAmes <- read_csv("L-STationNAmes.csv")
