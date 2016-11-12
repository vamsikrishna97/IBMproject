library(dplyr)
library(tidyr)
Students_Primary<-read.csv("StudentsP.csv")
Students_Secondary<-read.csv("StudentsS.csv")
names(Students_Secondary)[names(Students_Secondary)=="Particulars"]<-"School.Type"
Students<-rbind(Students_Primary,Students_Secondary)
#######Primary CLEAN####################
Students<-Students[4:nrow(Students),]
Students.clean<-  gather(Students,year,score,4:13)
Students.clean<-spread(Students.clean,Gender,score)
x<-Students.clean
x$id<-0
for(i in 1:length(unique(x$India..State..UTs))){
  
  x$id[which(x$India..State..UTs==unique(x$India..State..UTs)[i])]<-i+1286
}
Students.clean<-x
remove(x)
#####################USE students.clean #####################################

