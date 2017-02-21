begin;
lock table public.event_page_%api_token%;
create table public.event_page_%api_token%_$mig(
"id" character(24)   encode lzo 
,"event_name" varchar(128)   encode lzo 
,"pin_id" varchar(24)   encode lzo 
,"timestamp_" timestamp    encode RAW 
,"person_alias" varchar(128)   encode RAW 
,"visitor_id" varchar(128)   encode lzo 
,"session_id" varchar(24)   encode lzo 
,"element_tag" varchar(24)   encode bytedict 
,"attribute_id" varchar(64)   encode lzo 
,"attribute_name" varchar(64)   encode lzo 
,"attribute_type" varchar(24)   encode lzo 
,"attribute_title" varchar(64)   encode lzo 
,"attribute_alt" varchar(64)   encode lzo 
,"attribute_src" varchar(256)   encode lzo 
,"attribute_href" varchar(512)   encode lzo 
,"attribute_class" varchar(64)   encode lzo 
,"text_content" varchar(512)   encode lzo 
,"xpath_full" varchar(2048)   encode lzo 
,"xpath_ancestor" varchar(512)   encode lzo 
,"xpath_no_index" varchar(512)   encode lzo 
,"xpath_index" varchar(512)   encode lzo 
,"ip_address" varchar(64)   encode lzo 
,"geo_ip_country" varchar(64)   encode bytedict 
,"geo_ip_city" varchar(64)   encode text255 
,"geo_ip_region" varchar(64)   encode text255 
,"geo_ip_postal" varchar(10)   encode bytedict 
,"geo_ip_longitude" numeric(7,4)   encode lzo 
,"geo_ip_latitude" numeric(7,4)   encode lzo 
,"user_agent" varchar(256)   encode lzo 
,"operating_system" varchar(64)   encode bytedict 
,"device_type" varchar(64)   encode bytedict 
,"browser" varchar(64)   encode bytedict 
,"browser_major" varchar(64)   encode lzo 
,"page_title" varchar(1024)   encode lzo 
,"location" varchar(2048)   encode lzo 
,"location_host" varchar(256)   encode lzo 
,"location_path" varchar(1024)   encode lzo 
,"location_query" varchar(1024)   encode lzo 
,"location_fragment" varchar(1024)   encode lzo 
,"referrer" varchar(2048)   encode lzo 
,"referrer_host" varchar(256)   encode lzo 
,"referrer_path" varchar(1024)   encode lzo 
,"referrer_query" varchar(1024)   encode lzo 
,"referrer_fragment" varchar(1024)   encode lzo 
,"mouse_x" integer   encode lzo 
,"mouse_y" integer   encode lzo 
,"field_value" varchar(1024)   encode lzo 
,"video_id" varchar(32)   encode lzo 
,"video_author" varchar(128)   encode lzo 
,"video_length" numeric(7,2)   encode lzo 
,"video_state" varchar(16)   encode lzo 
,"video_time" numeric(7,2)   encode lzo 
,"video_title" varchar(1024)   encode lzo 
,"video_url" varchar(2048)   encode lzo 
,"video_volume" numeric(7,2)   encode lzo 
,"custom_properties" varchar(1024)   encode lzo 
,"event_sub_type" varchar(20)   encode lzo 
,"category_id" varchar(64)   encode lzo 
,"category_name" varchar(64)   encode lzo 
,"quote_id" varchar(64)   encode lzo 
,"order_id" varchar(64)   encode lzo 
,"total" numeric(7,2)   encode lzo 
,"revenue" numeric(7,2)   encode lzo 
,"shipping" numeric(7,2)   encode lzo 
,"shipping_method" varchar(64)   encode lzo 
,"tax" numeric(7,2)   encode lzo 
,"discount" numeric(7,2)   encode lzo 
,"coupon" varchar(64)   encode lzo 
)
 DISTKEY(person_alias)
 INTERLEAVED SORTKEY(timestamp_, location,  person_alias, session_id )
 ;
insert into public.event_page_%api_token%_$mig  select * from public.event_page_%api_token%;
analyze public.event_page_%api_token%_$mig;
drop table public.event_page_%api_token% cascade;
alter table public.event_page_%api_token%_$mig rename to event_page_%api_token%;
commit;
