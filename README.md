Comprehensive Analysis of Demographic of  School Students in India from 2001 to 2010



ABSTRACT


Literacy rates in India have always been a matter a of great concern.Here, we are analysing the demographic of  students studying in different types of schools from 2001 - 2010 across the nation and  understand the minute intricacies of Student-Teacher  ratio.’s implications Both of them invariably translates directly to  literacy rate.




1. Dataset


First part of our dataset includes 2 csv files taken from the source.
(i) Total number of boys and girls in Primary and Upper primary school in each state, Union territory in India from year 2001 - 2010.
(ii)Total number of boys and girls in Lower Secondary, Secondary  and  Upper Secondary school in each state, Union territory in India from year 2001 - 2010.


The above two datasets were combined to form a single table which contained 1 entry  for each school type, for every year and for every state.


Total rows in Dataset- 1800


Second part our dataset was the Student to Teacher ratio in Primary and  Upper Primary school across different states in India 2001 to 2010. 


Source :  https://data.gov.in/ 
















2. Initial Analysis


Line plot was plotted for each state to see the trend of students in school.



                         



A common trend was observed in all the states and UTs. 
Whatever be the trend over the years of a particular school, total enrollment in primary school is always very large than the enrollment in  secondary school.


This infers that initially , many people send their child in school but as they grow old, their school participation decreases.


3. Analysing Girl Participation



The above graph shows the percentage of girls in secondary and primary school in India over the years.
Red Bar- Primary girl percentage
Blue Bar- Secondary girl percentage


It can be seen that though percentage of girls in secondary school have increased over the years, it is still less than percentage of girls in primary school.


Analysis for each state:


Most of the states had girl percentage from 40% - 45 % of total. Some extreme cases are discussed below.


States with low Girl Percentage:


Bihar





Primary  school   : 2002 - 42.48 %  2010- 49.95%
Secondary school : 2002 - 29.2%     2010 - 41.6%


Remarkable rise in secondary girl percentage can be seen in Bihar over the years.




















Chhattisgarh



Primary  school   : 2002 - 48.09 %  2010- 48.085%
Secondary school : 2002 - 37.1%     2010 - 46.22%


Rajasthan



Primary  school   : 2002 - 45.0667 %  2010- 46.7%
Secondary school : 2002 - 29.3%     2010 - 37.73%


Though the state of Rajasthan has improved in the previous years but the secondary school Girl Percentage is still not good.






Madhya Pradesh



Primary  school   : 2002 - 46.29 %  2010- 49.20%
Secondary school : 2002 - 34.8%     2010 - 38.47%






States with high Girl Percentage:


The below two states are the only states with Secondary girl percentage greater than the primary girl percentage.


Goa



Primary  school   : 2002 - 47.8 %  2010- 47.69%
Secondary school : 2002 - 48.8%     2010 - 48.83%


Kerala





Primary  school   : 2002 - 48.88 %  2010- 49.001%
Secondary school : 2002 - 51.34%     2010 - 50.56%


Kerala is the only state with more than 50 % of girl in school.




































4.  Maps describing Female students percentage in Primary Schools in different states across a decade 

            
Inferences:
Andhra Pradesh and Kerala have been in the correct side over the 10 years.
That said Andhra Pradesh female percentage is gradually decreasing but it isnt alarming.
Uttar Pradesh starts out really low but gradually improves by the end of the decade.
Bihar are again in the wrong side of the spectrum.
Gujarat,Madhya Pradesh and few other states have fluctuating in the middle
Assam and Kerala have shown a significant improvement over the decade














5. Maps describing Female students percentage in Upper Primary Schools in different states across a decade





 


Inferences
Rajasthan and Bihar have had the least avg sex ratio over the 10 years.
At the start of the century Rajasthan and Bihar alarmingly low female percentage but gradually improved over the years but it is still unimpressive
There was a significant improvement in the sex ratio in Madhya Pradesh and Maharastra 
On an average the North-East and South India have a better sex ratio(among students) in the upper primary schools














6. Student per teacher ratio in primary schools across different years



The colour scheme is green to red . Red implies ratio is really high(Danger!) and green implies ratio is less (Great!).
Inferences
Karnataka and Himachal Pradesh over the years have been consistently been in the right side whereas Bihar student ratio is at the highest at 2004-2005 but slowly settles down later on.
Arunachal Pradesh,Mizoram and Assam have improved in this aspect significantly over the decade.
Maharastra ,Tamil Nadu and Andhra Pradesh have almost been unchanged over the decade.








7. STUDENT TO TEACHER RATIO IN UPPER PRIMARY SCHOOLS ACROSS DIFFERENT YEARS



Inferences
Again Bihar in the year 2004-2005 is worse.
Surprisingly enough, Karnataka doesnt fair all that well which had that best average ratio in primary schools.This can infer two things:
Number of students have increased
Number of qualified teachers is lesser when it comes to Upper Primary.
Point 1 is a false causation relation(From the dataset 1) so we can    safely say that number of qualified teachers has reduced(in Karnataka).This is observed in most states but the extent of it can be clearly noticed in Karnataka.
Himachal Pradesh and Mizoram have the best rating in both Primary School and Upper Primary School.








Packages Used:


tidyr,dplyr,reshape2(Data Manipulation )
rgeos,rgdal(Shapefile utilities)
ggmap,maptools(Maps )
ggplot2(Visualizations)
gganimate(Create dynamic GIFs)
RcolorBrewer(Colour schemas)


Additional Links:
Shapefile Data<- ”https://github.com/vamsikrishna97/IBMproject/tree/master/IND”
Data<- ”https://data.gov.in/catalog/number-students”
Mapping Code<- ”https://github.com/vamsikrishna97/IBMproject”


















CODE:


Preprocessing code snippet 



























2.) Preprocessing code snippet 2(Mapping)







3.) Mapping Code(Female percentage GIF code)




4.Mapping Code(Student to Teacher Ratio GIF code)

