
begin;
lock table public.session_%api_token%;
create table public.session_%api_token%_$mig(
"person_id" character(24)   encode raw 
,"session_id" varchar(24)   encode raw 
,"first_seen" timestamp    encode raw 
,"first_ip_address" varchar(64)   encode lzo 
,"first_geo_ip_country" varchar(64)   encode bytedict 
,"first_geo_ip_city" varchar(64)   encode lzo 
,"first_geo_ip_region" varchar(64)   encode lzo 
,"first_geo_ip_postal" char(10)   encode bytedict 
,"first_geo_ip_longitude" numeric(7,4)   encode lzo 
,"first_geo_ip_latitude" numeric(7,4)   encode lzo 
,"first_user_agent" varchar(256)   encode lzo 
,"first_operating_system" varchar(30)   encode bytedict 
,"first_device_type" varchar(30)   encode bytedict 
,"first_browser" varchar(30)   encode bytedict 
,"first_browser_major" varchar(5)   encode lzo 
,"first_location" varchar(2048)   encode lzo 
,"first_location_host" varchar(256)   encode lzo 
,"first_location_path" varchar(1024)   encode lzo 
,"first_location_query" varchar(1024)   encode lzo 
,"first_location_fragment" varchar(1024)   encode lzo 
,"first_referrer" varchar(2048)   encode lzo 
,"first_referrer_host" varchar(256)   encode lzo 
,"first_referrer_path" varchar(1024)   encode lzo 
,"first_referrer_query" varchar(1024)   encode lzo 
,"first_referrer_fragment" varchar(1024)   encode lzo 
,"first_utm_campaign" varchar(32)   encode lzo 
,"first_utm_content" varchar(32)   encode lzo 
,"first_utm_medium" varchar(32)   encode lzo 
,"first_utm_source" varchar(32)   encode bytedict 
,"first_utm_term" varchar(32)   encode bytedict 
,"last_seen" timestamp    encode lzo 
,"last_location" varchar(2048)   encode lzo 
,"last_location_host" varchar(256)   encode lzo 
,"last_location_path" varchar(1024)   encode lzo 
,"last_location_query" varchar(1024)   encode lzo 
,"last_location_fragment" varchar(1024)   encode lzo 
,"click_count" integer   encode MOSTLY8 
,"input_count" integer   encode MOSTLY8 
,"view_count" integer   encode MOSTLY8 
,"watch_count" integer   encode MOSTLY8 
,"track_count" integer   encode MOSTLY8 
,"ecommerce_count" integer   encode MOSTLY8 
,"page_count" integer   encode MOSTLY8 
,"orders_total" numeric(10,2)   encode lzo 
)
DISTKEY(person_id)  
INTERLEAVED SORTKEY(person_id,session_id,first_seen)
 ;
insert into public.session_%api_token%_$mig  select * from public.session_%api_token%;
analyze public.session_%api_token%_$mig;
drop table public.session_%api_token% cascade;
alter table public.session_%api_token%_$mig rename to session_%api_token%;
commit;
