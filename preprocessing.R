x <- c("ggmap", "rgdal", "rgeos", "maptools", "dplyr", "tidyr", "tmap","dplyr","plyr")
lapply(x, library,character.only=TRUE)
Students_Primary<-read.csv("StudentsP.csv")
Students_Secondary<-read.csv("StudentsS.csv")

ind<-readOGR("/home/vamsi/Documents/IBMproject/IND","IND_adm1")


StudentTest<-Students_Primary[Students_Primary$Gender=="Total",]
StudentTest<-StudentTest[StudentTest$School.Type=="Primary School",]
StudentTest<-StudentTest[2:nrow(StudentTest),]
StudentTest$ID_1<-1:nrow(StudentTest)
StudentTest$ID_1<-StudentTest$ID_1+1286

indup<-ind

indup.df<-fortify(indup2,region = "ID_1")
StudentTest$id<-StudentTest$ID_1
indup.df1<-join(indup.df,StudentTest)

ggplot(indup.df1) +
aes(long,lat,group=group,fill=X2009 +
geom_polygon() +
geom_path(color="black") +
coord_equal()


# indup@data<-left_join(indup@data,StudentTest)
# library(tmap)
# qtm(indup,"X2001")
# qtm(indup,"X2001")

