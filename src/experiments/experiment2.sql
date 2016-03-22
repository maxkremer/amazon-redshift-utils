/*
*  Experiment #2 compound sortkey(timestamp_, location)
*
    7-8 seconds
*/



create table exp2_2015_11 
compound sortkey(timestamp_, location)
distkey(person_alias) AS
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2015_11 ;
                
create table exp2_2015_12
compound sortkey(timestamp_, location)
distkey(person_alias) AS	
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2015_12 ;
                
create table exp2_2016_1	
compound sortkey(timestamp_, location)
distkey(person_alias) AS
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2016_1   ; 
              
create table exp2_2016_2
compound sortkey(timestamp_, location)
distkey(person_alias) AS	
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2016_2    ;              

create table exp2_2016_3
compound sortkey(timestamp_, location)
distkey(person_alias) AS	
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2016_3     ;  


create view exp2
as 
select * from  exp2_2015_11
union all
select * from  exp2_2015_12
union all
select * from  exp2_2016_1
union all
select * from  exp2_2016_2  
union all
select * from  exp2_2016_3     


--2016-03-03 03:48:44.817

select P.last_geo_ip_country ,  count(distinct P.person_id)
from exp2 O join alias_9ee3ab17_d1e9_414c_928f_7aa962f30e53 as A 
on (O.person_alias = A.alias) 
join person_9ee3ab17_d1e9_414c_928f_7aa962f30e53 as P 
on (A.person_id = P.person_id and P.last_seen between cast('2016-02-01 00:00:00' as timestamp) and cast('2016-03-29 00:00:00' as timestamp)) 
where O.location like 'http://www.footasylum.com/%'
and O.timestamp_ between cast('2016-02-01 00:00:00' as timestamp) and cast('2016-03-29 00:00:00' as timestamp)
group by P.last_geo_ip_country;    

     
