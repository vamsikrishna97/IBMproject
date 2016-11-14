
library(rgeos)
library(rgdal)
library(ggmap)
library(maptools)
library(plyr)
library(RColorBrewer)


ind<-readOGR("/home/vamsi/Documents/IBMproject/IND","IND_adm1")


Gender<-"Boy"
Type<-"Primary School"
Year<-"X2009"

Map<-function(Gender,Type,Year){
  
StudentsM<-Students[Students$Gender==Gender,]

StudentsM<-StudentsM[StudentsM$School.Type==Type,]
#Student<-StudentTest[2:nrow(StudentTest),]
StudentsM$id<-1:nrow(StudentsM)
StudentsM$id<-StudentsM$id+1286
print("3")

indup<-ind

indup.df<-fortify(indup,region = "ID_1")
indup.df1<-join(indup.df,StudentsM,by="id")
print("4")

ggplot(indup.df1) +
aes(long,lat,group=group,fill=get(names(indup.df1)[names(indup.df1)==Year]))+
ggtitle(paste0( "Map Plot:","\n", "Gender=",Gender,"       ","Type=",Type))+
geom_polygon() +
scale_fill_gradient(trans="reverse" ,guide_legend(Year))+
geom_path(color="grey") +
coord_equal()

}

