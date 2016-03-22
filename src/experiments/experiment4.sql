/*
*  Experiment #4 compression
*
   over 30 seconds
*/




CREATE TABLE exp4_2015_11 (
    id                CHAR(24) PRIMARY KEY,
    customer_id       VARCHAR(36)  ENCODE runlength NOT NULL,
    api_token         VARCHAR(36)  ENCODE runlength NOT NULL,
    event_type        VARCHAR(20) NOT NULL,
    event_name        VARCHAR(128),
    pin_id            VARCHAR(24),

    timestamp_        TIMESTAMP  ENCODE delta32k NOT NULL ,
    person_alias      VARCHAR(128) NOT NULL,
    visitor_id        VARCHAR(128) NOT NULL,
    session_id        VARCHAR(24) NOT NULL,

    element_tag       VARCHAR(24)  ENCODE bytedict,
    attribute_id      VARCHAR(64),
    attribute_name    VARCHAR(64),
    attribute_type    VARCHAR(24),
    attribute_title   VARCHAR(64),
    attribute_alt     VARCHAR(64),
    attribute_src     VARCHAR(256)  ENCODE lzo ,
    attribute_href    VARCHAR(512)  ENCODE lzo ,
    attribute_class   VARCHAR(64),
    text_content      VARCHAR(512)  ENCODE lzo ,

    xpath_full        VARCHAR(2048) ENCODE lzo ,
    xpath_ancestor    VARCHAR(512) ENCODE lzo ,
    xpath_no_index    VARCHAR(512) ENCODE lzo ,
    xpath_index       VARCHAR(512) ENCODE lzo ,

    ip_address        VARCHAR(64)  ENCODE lzo ,
    geo_ip_country    VARCHAR(64)  ENCODE bytedict ,
    geo_ip_city       VARCHAR(64)  ENCODE bytedict ,
    geo_ip_region     VARCHAR(64)  ENCODE bytedict ,
    geo_ip_postal     VARCHAR(10)  ENCODE bytedict ,
    geo_ip_longitude  NUMERIC(7,4),
    geo_ip_latitude   NUMERIC(7,4),
    user_agent        VARCHAR(256)  ENCODE lzo ,
    operating_system  VARCHAR(64)  ENCODE bytedict ,
    device_type       VARCHAR(64)  ENCODE bytedict ,
    browser           VARCHAR(64)  ENCODE bytedict ,
    browser_major     VARCHAR(64)  ENCODE bytedict ,
    page_title        VARCHAR(1024)  ENCODE text32k ,
    location          VARCHAR(2048)  ENCODE text32k ,
    location_host     VARCHAR(256)  ENCODE runlength ,
    location_path     VARCHAR(1024)  ENCODE lzo ,
    location_query    VARCHAR(1024)  ENCODE lzo ,
    location_fragment VARCHAR(1024)  ENCODE lzo ,
    referrer          VARCHAR(2048)  ENCODE lzo ,
    referrer_host     VARCHAR(256)  ENCODE lzo ,
    referrer_path     VARCHAR(1024)  ENCODE lzo ,
    referrer_query    VARCHAR(1024)  ENCODE lzo ,
    referrer_fragment VARCHAR(1024)  ENCODE lzo ,

    mouse_x           INT,
    mouse_y           INT,
    field_value       VARCHAR(1024)  ENCODE lzo ,
    video_id          VARCHAR(32),
    video_author      VARCHAR(128),
    video_length      NUMERIC(7,2),
    video_state       VARCHAR(16),
    video_time        NUMERIC(7,2),
    video_title       VARCHAR(1024)  ENCODE lzo ,
    video_url         VARCHAR(2048)  ENCODE lzo ,
    video_volume      NUMERIC(7,2),
    custom_properties VARCHAR(1024)  ENCODE text32k ,
    event_sub_type    VARCHAR(20)  ENCODE bytedict ,
    category_id       VARCHAR(64)  ENCODE text255 ,
    category_name     VARCHAR(64)  ENCODE text255 ,
    quote_id          VARCHAR(64),
    order_id          VARCHAR(64),
    total             NUMERIC(7,2)  ENCODE mostly16 ,
    revenue           NUMERIC(7,2)  ENCODE mostly16 ,
    shipping          NUMERIC(7,2)  ENCODE mostly16 ,
    shipping_method   VARCHAR(64)  ENCODE text255 ,
    tax               NUMERIC(7,2)  ENCODE mostly16 ,
    discount          NUMERIC(7,2)  ENCODE mostly16 ,
    coupon            VARCHAR(64)  ENCODE text255
)
DISTKEY(person_alias)
INTERLEAVED SORTKEY(timestamp_, location);


create table exp4_2015_12 (
like exp4_2015_11);

create table exp4_2016_1 (
like exp4_2015_11);

create table exp4_2016_2 (
like exp4_2015_11);

create table exp4_2016_3 (
like exp4_2015_11);


insert into exp4_2015_11
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2015_11 ;
                
insert into exp4_2015_12
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2015_12 ;

insert into exp4_2016_1
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2016_1   ; 
              
insert into exp4_2016_2	
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2016_2    ;              

insert into exp4_2016_3
select * from event_page_9ee3ab17_d1e9_414c_928f_7aa962f30e53_2016_3     ;  




create view exp4
as 
select * from  exp4_2015_11
union all
select * from  exp4_2015_12
union all
select * from  exp4_2016_1
union all
select * from  exp4_2016_2  
union all
select * from  exp4_2016_3   ;  



--2016-03-03 03:48:44.817
explain
select P.last_geo_ip_country ,  count(distinct P.person_id)
from exp4 O join alias_9ee3ab17_d1e9_414c_928f_7aa962f30e53 as A 
on (O.person_alias = A.alias) 
join person_9ee3ab17_d1e9_414c_928f_7aa962f30e53 as P 
on (A.person_id = P.person_id and P.last_seen between cast('2016-02-01 00:00:00' as timestamp) and cast('2016-03-29 00:00:00' as timestamp)) 
where  O.timestamp_ between cast('2016-02-01 00:00:00' as timestamp) and cast('2016-03-29 00:00:00' as timestamp)
group by P.last_geo_ip_country;    




