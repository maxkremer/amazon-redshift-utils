/*
*  Experiment #3 interleaved sortkey(timestamp_, location)
*
   8-12 seconds
*/



create table exp3_2015_11 
 interleaved sortkey(timestamp_, location)
distkey(person_alias) AS
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2015_11 ;
                
create table exp3_2015_12
 interleaved sortkey(timestamp_, location)
distkey(person_alias) AS	
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2015_12 ;
                
create table exp3_2016_1	
 interleaved sortkey(timestamp_, location)
distkey(person_alias) AS
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2016_1   ; 
              
create table exp3_2016_2
 interleaved sortkey(timestamp_, location)
distkey(person_alias) AS	
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2016_2    ;              

create table exp3_2016_3
 interleaved sortkey(timestamp_, location)
distkey(person_alias) AS	
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2016_3     ;  




create view exp3
as 
select * from  exp3_2015_11
union all
select * from  exp3_2015_12
union all
select * from  exp3_2016_1
union all
select * from  exp3_2016_2  
union all
select * from  exp3_2016_3     


create view exp3b
as 
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2015_11 
union all
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2015_12 
union all
select * from  event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2016_1
union all
select * from  event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2016_2  
union all
select * from  event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2016_3     

--2016-03-03 03:48:44.817
explain
select P.last_geo_ip_country ,  count(distinct P.person_id)
from exp3 O join alias_9ee3ab17_d1e9_414c_928f_7aa962f30e53 as A 
on (O.person_alias = A.alias) 
join person_9ee3ab17_d1e9_414c_928f_7aa962f30e53 as P 
on (A.person_id = P.person_id and P.last_seen between cast('2016-02-01 00:00:00' as timestamp) and cast('2016-03-29 00:00:00' as timestamp)) 
where  O.timestamp_ between cast('2016-02-01 00:00:00' as timestamp) and cast('2016-03-29 00:00:00' as timestamp)
group by P.last_geo_ip_country;    

select P.last_geo_ip_country ,  count(distinct P.person_id)
from exp3 O join alias_9ee3ab17_d1e9_414c_928f_7aa962f30e53 as A 
on (O.person_alias = A.alias) 
join person_9ee3ab17_d1e9_414c_928f_7aa962f30e53 as P 
on (A.person_id = P.person_id and P.last_seen between cast('2016-02-01 00:00:00' as timestamp) and cast('2016-03-29 00:00:00' as timestamp)) 
where  O.timestamp_ between cast('2016-02-01 00:00:00' as timestamp) and cast('2016-03-29 00:00:00' as timestamp)
group by P.last_geo_ip_country;  
  
select P.last_geo_ip_country ,  count(distinct P.person_id)
from exp3 O join alias_9ee3ab17_d1e9_414c_928f_7aa962f30e53 as A 
on (O.person_alias = A.alias) 
join person_9ee3ab17_d1e9_414c_928f_7aa962f30e53 as P 
on (A.person_id = P.person_id and P.last_seen between cast('2016-02-01 00:00:00' as timestamp) and cast('2016-03-29 00:00:00' as timestamp)) 
where  O.timestamp_ between cast('2016-02-01 00:00:00' as timestamp) and cast('2016-03-29 00:00:00' as timestamp)
group by P.last_geo_ip_country;    



     
