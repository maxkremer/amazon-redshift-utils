-- [3550] Analyzing Table 'person_00774067_e74b_48de_ba3e_a4751e5fbd25'
-- [3550] No encoding modifications required for public.person_00774067_e74b_48de_ba3e_a4751e5fbd25
-- [3549] Column Encoding will be modified for public.person_%api_token%
begin;
lock table public.person_%api_token%;
create table public.person_%api_token%_$mig(
"person_id" character(24)   encode raw 
,"user_id" varchar(64)   encode lzo 
,"last_fc_update" timestamp    encode lzo 
,"custom_traits" varchar(4096)   encode lzo 
,"email_address" varchar(64)   encode lzo 
,"first_name" varchar(64)   encode lzo 
,"last_name" varchar(64)   encode lzo 
,"full_name" varchar(64)   encode lzo 
,"age" integer   encode mostly8 
,"age_range" varchar(16)   encode lzo 
,"gender" varchar(8)   encode bytedict 
,"company" varchar(128)   encode lzo 
,"title" varchar(128)   encode lzo 
,"country" varchar(64)   encode lzo 
,"city" varchar(64)   encode lzo 
,"region" varchar(64)   encode lzo 
,"postal" varchar(10)   encode lzo 
,"address" varchar(128)   encode lzo 
,"longitude" numeric(7,4)   encode lzo 
,"latitude" numeric(7,4)   encode lzo 
,"avatar" varchar(1024)   encode lzo 
,"accept_language" varchar(64)   encode lzo 
,"prefer_language" varchar(16)   encode bytedict 
,"facebook_id" varchar(64)   encode lzo 
,"facebook_username" varchar(64)   encode lzo 
,"facebook_url" varchar(256)   encode lzo 
,"linked_in_id" varchar(64)   encode lzo 
,"linked_in_username" varchar(64)   encode lzo 
,"linked_in_url" varchar(256)   encode lzo 
,"linked_in_bio" varchar(256)   encode lzo 
,"twitter_username" varchar(32)   encode lzo 
,"twitter_followers" integer   encode lzo 
,"first_seen" timestamp    encode lzo 
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
,"first_utm_medium" varchar(32)   encode bytedict 
,"first_utm_source" varchar(32)   encode bytedict 
,"first_utm_term" varchar(32)   encode lzo 
,"last_seen" timestamp    encode RAW 
,"last_ip_address" char(50)   encode lzo 
,"last_geo_ip_country" varchar(64)   encode bytedict 
,"last_geo_ip_city" varchar(64)   encode lzo 
,"last_geo_ip_region" varchar(64)   encode lzo 
,"last_geo_ip_postal" char(10)   encode bytedict 
,"last_geo_ip_longitude" numeric(7,4)   encode lzo 
,"last_geo_ip_latitude" numeric(7,4)   encode lzo 
,"last_session_id" varchar(24)   encode lzo 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode lzo 
,"phone" varchar(32)   encode lzo 
,"orders_placed" integer   encode mostly8 
,"orders_total" numeric(7,2)   encode lzo 
,"last_order_time" timestamp    encode lzo 
,"last_order_total" numeric(7,2)   encode lzo 
,"multi_device" boolean   encode runlength 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" char(30)   encode bytedict 
,"last_device_type" char(30)   encode bytedict 
,"last_browser" char(30)   encode bytedict 
,"last_browser_major" char(5)   encode lzo 
,"first_order_time" timestamp    encode lzo 
,"first_order_total" numeric(10,2)   encode lzo 
)
 DISTKEY(person_id)
 INTERLEAVED SORTKEY(person_id, last_seen)
 ;
insert into public.person_%api_token%_$mig  select * from public.person_%api_token%;
analyze public.person_%api_token%_$mig;
drop table public.person_%api_token% cascade;
alter table public.person_%api_token%_$mig rename to person_%api_token%;
commit;

