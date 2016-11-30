q<-read.csv("StudentperT.csv")
q<-q[q$India..State..UTs!="India",]
for(i in 1:length(unique(q$India..State..UTs))){
  
  q[q$India..State..UTs==unique(q$India..State..UTs)[i],"id"]<-i+1286
  
}

q.clean<-gather(q,Year,Number,3:12)

Type<-"Primary School"
ind.df<-join(indup.df,q.clean,by="id")

Mapper<- function(Type){
  ind.df<-ind.df[ind.df$School.Type==Type,]
  p<-ggplot(ind.df) +
    aes(long,lat,group=group,fill=Number,frame=Year)+
    ggtitle(paste0( "Student Per Teacher in the year:"),subtitle = paste0( "Type=",Type))+
    geom_polygon()+
    
    scale_fill_gradient(low = "green",
                        high = "red1" ,guide_legend("No of students per Teacher"))+
    geom_path(color="grey") +
    coord_equal()
  print("Making GIF")
  gg_animate(p,interval=1.3)
 
  
}
