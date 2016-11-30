
library(rgeos)
library(rgdal)
library(ggmap)
library(maptools)
library(plyr)
library(RColorBrewer)
library(ggplot2)
library(gganimate)

ind<-readOGR("/home/vamsi/Documents/IBMproject/IND","IND_adm1")

indup<-ind

indup.df<-fortify(indup,region = "ID_1")

Gender<-"Girl"
Type<-"Primary School"


Map<-function(Gender,Type){
  Studentsq<-Students[Students$Gender=="Total",]
StudentsM<-Students[Students$Gender==Gender,]
StudentsM$ratio<-StudentsM$Number/Studentsq$Number

StudentsM<-StudentsM[StudentsM$School.Type==Type,]
print("Accepted conditions")


indup.df1<-join(indup.df,StudentsM,by="id")
print("Joined Shape file with data")


# ggplot(indup.df1) +
# aes(long,lat,group=group,fill=get(names(indup.df1)[names(indup.df1)==Year]))+
# ggtitle(paste0( "Map Plot:","\n", "Gender=",Gender,"       ","Type=",Type))+
# geom_polygon() +
# scale_fill_gradient(trans="reverse" ,guide_legend(Year))+
# geom_path(color="grey") +
# coord_equal()

p<-ggplot(indup.df1) +
  aes(long,lat,group=group,fill=ratio,frame=Year)+
  ggtitle(paste0( "Map Plot:"),subtitle = paste0( "Gender=",Gender," ","Type=",Type))+
  geom_polygon()+
  scale_fill_gradient(low="blue",high = "deeppink" ,guide_legend("Sex Ratio (Female/Total)"))+
  geom_path(color="grey") +
  coord_equal()
print("Making GIF")
gg_animate(p,"x.gif",interval=1.3)
}


Map(Gender,Type)



