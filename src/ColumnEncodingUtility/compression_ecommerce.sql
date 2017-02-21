-- [22683] Connected to tfclickstream.civjv74w6cxl.us-west-2.redshift.amazonaws.com:5439:clickstream as tfdev
-- [22683] Analyzing Schema 'public' for Columnar Encoding Optimisations with 2 Threads...
-- [22683] Extracting Candidate Table List...
-- [22683] Analyzing 15 table(s)
-- [22686] Analyzing Table 'event_ecommerce_33b5fc33_b1c1_4bc6_9286_6f609bd08cf5_2016_4'
-- [22687] Analyzing Table 'event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2015_11'
-- [22687] No encoding modifications required for public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2015_11
-- [22687] Analyzing Table 'event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_2'
-- [22686] No encoding modifications required for public.event_ecommerce_33b5fc33_b1c1_4bc6_9286_6f609bd08cf5_2016_4
-- [22686] Analyzing Table 'event_ecommerce_33b5fc33_b1c1_4bc6_9286_6f609bd08cf5_2016_3'
-- [22686] No encoding modifications required for public.event_ecommerce_33b5fc33_b1c1_4bc6_9286_6f609bd08cf5_2016_3
-- [22686] Analyzing Table 'event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_2'
-- [22687] Column Encoding will be modified for public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_2
begin;
lock table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_2;
create table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_2_$mig(
"id" character(24)   encode raw 
,"event_name" varchar(128)   encode raw 
,"pin_id" varchar(24)   encode raw 
,"timestamp_" timestamp    encode RAW 
,"person_alias" varchar(128)   encode raw 
,"visitor_id" varchar(128)   encode raw 
,"session_id" varchar(24)   encode raw 
,"element_tag" varchar(24)   encode raw 
,"attribute_id" varchar(64)   encode raw 
,"attribute_name" varchar(64)   encode raw 
,"attribute_type" varchar(24)   encode raw 
,"attribute_title" varchar(64)   encode raw 
,"attribute_alt" varchar(64)   encode raw 
,"attribute_src" varchar(256)   encode raw 
,"attribute_href" varchar(512)   encode raw 
,"attribute_class" varchar(64)   encode raw 
,"text_content" varchar(512)   encode raw 
,"xpath_full" varchar(2048)   encode raw 
,"xpath_ancestor" varchar(512)   encode raw 
,"xpath_no_index" varchar(512)   encode raw 
,"xpath_index" varchar(512)   encode raw 
,"ip_address" varchar(64)   encode raw 
,"geo_ip_country" varchar(64)   encode raw 
,"geo_ip_city" varchar(64)   encode raw 
,"geo_ip_region" varchar(64)   encode raw 
,"geo_ip_postal" varchar(10)   encode raw 
,"geo_ip_longitude" numeric(7,4)   encode raw 
,"geo_ip_latitude" numeric(7,4)   encode raw 
,"user_agent" varchar(256)   encode lzo 
,"operating_system" varchar(64)   encode raw 
,"device_type" varchar(64)   encode raw 
,"browser" varchar(64)   encode raw 
,"browser_major" varchar(64)   encode raw 
,"page_title" varchar(1024)   encode raw 
,"location" varchar(2048)   encode lzo 
,"location_host" varchar(256)   encode raw 
,"location_path" varchar(1024)   encode raw 
,"location_query" varchar(1024)   encode raw 
,"location_fragment" varchar(1024)   encode raw 
,"referrer" varchar(2048)   encode lzo 
,"referrer_host" varchar(256)   encode raw 
,"referrer_path" varchar(1024)   encode raw 
,"referrer_query" varchar(1024)   encode raw 
,"referrer_fragment" varchar(1024)   encode raw 
,"mouse_x" integer   encode raw 
,"mouse_y" integer   encode raw 
,"field_value" varchar(1024)   encode raw 
,"video_id" varchar(32)   encode raw 
,"video_author" varchar(128)   encode raw 
,"video_length" numeric(7,2)   encode raw 
,"video_state" varchar(16)   encode raw 
,"video_time" numeric(7,2)   encode raw 
,"video_title" varchar(1024)   encode raw 
,"video_url" varchar(2048)   encode raw 
,"video_volume" numeric(7,2)   encode raw 
,"custom_properties" varchar(1024)   encode raw 
,"event_sub_type" varchar(20)   encode raw 
,"category_id" varchar(64)   encode raw 
,"category_name" varchar(64)   encode raw 
,"quote_id" varchar(64)   encode raw 
,"order_id" varchar(64)   encode raw 
,"total" numeric(7,2)   encode raw 
,"revenue" numeric(7,2)   encode raw 
,"shipping" numeric(7,2)   encode raw 
,"shipping_method" varchar(64)   encode raw 
,"tax" numeric(7,2)   encode raw 
,"discount" numeric(7,2)   encode raw 
,"coupon" varchar(64)   encode raw 
,"quote_total_quantity" integer   encode raw 
,"quote_line_item_count" integer   encode raw 
)
 INTERLEAVED SORTKEY(timestamp_,event_sub_type,person_alias,session_id)
 ;
insert into public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_2_$mig  select * from public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_2;
analyze public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_2_$mig;
drop table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_2 cascade;
alter table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_2_$mig rename to event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_2;
commit;
-- [22687] Analyzing Table 'event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_4'
-- [22686] Column Encoding will be modified for public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_2
begin;
lock table public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_2;
create table public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_2_$mig(
"id" character(24)   encode raw 
,"event_name" varchar(128)   encode raw 
,"pin_id" varchar(24)   encode raw 
,"timestamp_" timestamp    encode RAW 
,"person_alias" varchar(128)   encode raw 
,"visitor_id" varchar(128)   encode raw 
,"session_id" varchar(24)   encode raw 
,"element_tag" varchar(24)   encode raw 
,"attribute_id" varchar(64)   encode raw 
,"attribute_name" varchar(64)   encode raw 
,"attribute_type" varchar(24)   encode raw 
,"attribute_title" varchar(64)   encode raw 
,"attribute_alt" varchar(64)   encode raw 
,"attribute_src" varchar(256)   encode raw 
,"attribute_href" varchar(512)   encode raw 
,"attribute_class" varchar(64)   encode raw 
,"text_content" varchar(512)   encode raw 
,"xpath_full" varchar(2048)   encode raw 
,"xpath_ancestor" varchar(512)   encode raw 
,"xpath_no_index" varchar(512)   encode raw 
,"xpath_index" varchar(512)   encode raw 
,"ip_address" varchar(64)   encode raw 
,"geo_ip_country" varchar(64)   encode raw 
,"geo_ip_city" varchar(64)   encode raw 
,"geo_ip_region" varchar(64)   encode raw 
,"geo_ip_postal" varchar(10)   encode raw 
,"geo_ip_longitude" numeric(7,4)   encode raw 
,"geo_ip_latitude" numeric(7,4)   encode raw 
,"user_agent" varchar(256)   encode lzo 
,"operating_system" varchar(64)   encode raw 
,"device_type" varchar(64)   encode raw 
,"browser" varchar(64)   encode raw 
,"browser_major" varchar(64)   encode raw 
,"page_title" varchar(1024)   encode raw 
,"location" varchar(2048)   encode lzo 
,"location_host" varchar(256)   encode raw 
,"location_path" varchar(1024)   encode raw 
,"location_query" varchar(1024)   encode raw 
,"location_fragment" varchar(1024)   encode raw 
,"referrer" varchar(2048)   encode raw 
,"referrer_host" varchar(256)   encode raw 
,"referrer_path" varchar(1024)   encode raw 
,"referrer_query" varchar(1024)   encode raw 
,"referrer_fragment" varchar(1024)   encode raw 
,"mouse_x" integer   encode raw 
,"mouse_y" integer   encode raw 
,"field_value" varchar(1024)   encode raw 
,"video_id" varchar(32)   encode raw 
,"video_author" varchar(128)   encode raw 
,"video_length" numeric(7,2)   encode raw 
,"video_state" varchar(16)   encode raw 
,"video_time" numeric(7,2)   encode raw 
,"video_title" varchar(1024)   encode raw 
,"video_url" varchar(2048)   encode raw 
,"video_volume" numeric(7,2)   encode raw 
,"custom_properties" varchar(1024)   encode raw 
,"event_sub_type" varchar(20)   encode raw 
,"category_id" varchar(64)   encode raw 
,"category_name" varchar(64)   encode raw 
,"quote_id" varchar(64)   encode raw 
,"order_id" varchar(64)   encode raw 
,"total" numeric(7,2)   encode raw 
,"revenue" numeric(7,2)   encode raw 
,"shipping" numeric(7,2)   encode raw 
,"shipping_method" varchar(64)   encode raw 
,"tax" numeric(7,2)   encode raw 
,"discount" numeric(7,2)   encode raw 
,"coupon" varchar(64)   encode raw 
,"quote_total_quantity" integer   encode raw 
,"quote_line_item_count" integer   encode raw 
)
 INTERLEAVED SORTKEY(timestamp_,event_sub_type,person_alias,session_id)
 ;
insert into public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_2_$mig  select * from public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_2;
analyze public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_2_$mig;
drop table public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_2 cascade;
alter table public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_2_$mig rename to event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_2;
commit;
-- [22686] Analyzing Table 'event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_1'
-- [22687] No encoding modifications required for public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_4
-- [22687] Analyzing Table 'event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_3'
-- [22686] Column Encoding will be modified for public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_1
begin;
lock table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_1;
create table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_1_$mig(
"id" character(24)   encode raw 
,"event_name" varchar(128)   encode raw 
,"pin_id" varchar(24)   encode raw 
,"timestamp_" timestamp    encode RAW 
,"person_alias" varchar(128)   encode raw 
,"visitor_id" varchar(128)   encode raw 
,"session_id" varchar(24)   encode raw 
,"element_tag" varchar(24)   encode raw 
,"attribute_id" varchar(64)   encode raw 
,"attribute_name" varchar(64)   encode raw 
,"attribute_type" varchar(24)   encode raw 
,"attribute_title" varchar(64)   encode raw 
,"attribute_alt" varchar(64)   encode raw 
,"attribute_src" varchar(256)   encode raw 
,"attribute_href" varchar(512)   encode raw 
,"attribute_class" varchar(64)   encode raw 
,"text_content" varchar(512)   encode raw 
,"xpath_full" varchar(2048)   encode raw 
,"xpath_ancestor" varchar(512)   encode raw 
,"xpath_no_index" varchar(512)   encode raw 
,"xpath_index" varchar(512)   encode raw 
,"ip_address" varchar(64)   encode raw 
,"geo_ip_country" varchar(64)   encode raw 
,"geo_ip_city" varchar(64)   encode raw 
,"geo_ip_region" varchar(64)   encode raw 
,"geo_ip_postal" varchar(10)   encode raw 
,"geo_ip_longitude" numeric(7,4)   encode raw 
,"geo_ip_latitude" numeric(7,4)   encode raw 
,"user_agent" varchar(256)   encode lzo 
,"operating_system" varchar(64)   encode raw 
,"device_type" varchar(64)   encode raw 
,"browser" varchar(64)   encode raw 
,"browser_major" varchar(64)   encode raw 
,"page_title" varchar(1024)   encode lzo 
,"location" varchar(2048)   encode lzo 
,"location_host" varchar(256)   encode raw 
,"location_path" varchar(1024)   encode raw 
,"location_query" varchar(1024)   encode raw 
,"location_fragment" varchar(1024)   encode raw 
,"referrer" varchar(2048)   encode lzo 
,"referrer_host" varchar(256)   encode raw 
,"referrer_path" varchar(1024)   encode raw 
,"referrer_query" varchar(1024)   encode raw 
,"referrer_fragment" varchar(1024)   encode raw 
,"mouse_x" integer   encode raw 
,"mouse_y" integer   encode raw 
,"field_value" varchar(1024)   encode raw 
,"video_id" varchar(32)   encode raw 
,"video_author" varchar(128)   encode raw 
,"video_length" numeric(7,2)   encode raw 
,"video_state" varchar(16)   encode raw 
,"video_time" numeric(7,2)   encode raw 
,"video_title" varchar(1024)   encode raw 
,"video_url" varchar(2048)   encode raw 
,"video_volume" numeric(7,2)   encode raw 
,"custom_properties" varchar(1024)   encode raw 
,"event_sub_type" varchar(20)   encode raw 
,"category_id" varchar(64)   encode raw 
,"category_name" varchar(64)   encode raw 
,"quote_id" varchar(64)   encode raw 
,"order_id" varchar(64)   encode raw 
,"total" numeric(7,2)   encode raw 
,"revenue" numeric(7,2)   encode raw 
,"shipping" numeric(7,2)   encode raw 
,"shipping_method" varchar(64)   encode raw 
,"tax" numeric(7,2)   encode raw 
,"discount" numeric(7,2)   encode raw 
,"coupon" varchar(64)   encode raw 
,"quote_total_quantity" integer   encode raw 
,"quote_line_item_count" integer   encode raw 
)
 INTERLEAVED SORTKEY(timestamp_,event_sub_type,person_alias,session_id)
 ;
insert into public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_1_$mig  select * from public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_1;
analyze public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_1_$mig;
drop table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_1 cascade;
alter table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_1_$mig rename to event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_1;
commit;
-- [22686] Analyzing Table 'event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_3'
-- [22687] Column Encoding will be modified for public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_3
begin;
lock table public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_3;
create table public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_3_$mig(
"id" character(24)   encode raw 
,"event_name" varchar(128)   encode raw 
,"pin_id" varchar(24)   encode raw 
,"timestamp_" timestamp    encode RAW 
,"person_alias" varchar(128)   encode lzo 
,"visitor_id" varchar(128)   encode lzo 
,"session_id" varchar(24)   encode lzo 
,"element_tag" varchar(24)   encode raw 
,"attribute_id" varchar(64)   encode raw 
,"attribute_name" varchar(64)   encode raw 
,"attribute_type" varchar(24)   encode raw 
,"attribute_title" varchar(64)   encode raw 
,"attribute_alt" varchar(64)   encode raw 
,"attribute_src" varchar(256)   encode raw 
,"attribute_href" varchar(512)   encode raw 
,"attribute_class" varchar(64)   encode raw 
,"text_content" varchar(512)   encode raw 
,"xpath_full" varchar(2048)   encode raw 
,"xpath_ancestor" varchar(512)   encode raw 
,"xpath_no_index" varchar(512)   encode raw 
,"xpath_index" varchar(512)   encode raw 
,"ip_address" varchar(64)   encode raw 
,"geo_ip_country" varchar(64)   encode raw 
,"geo_ip_city" varchar(64)   encode raw 
,"geo_ip_region" varchar(64)   encode raw 
,"geo_ip_postal" varchar(10)   encode raw 
,"geo_ip_longitude" numeric(7,4)   encode raw 
,"geo_ip_latitude" numeric(7,4)   encode raw 
,"user_agent" varchar(256)   encode lzo 
,"operating_system" varchar(64)   encode raw 
,"device_type" varchar(64)   encode raw 
,"browser" varchar(64)   encode raw 
,"browser_major" varchar(64)   encode raw 
,"page_title" varchar(1024)   encode lzo 
,"location" varchar(2048)   encode lzo 
,"location_host" varchar(256)   encode raw 
,"location_path" varchar(1024)   encode lzo 
,"location_query" varchar(1024)   encode raw 
,"location_fragment" varchar(1024)   encode raw 
,"referrer" varchar(2048)   encode lzo 
,"referrer_host" varchar(256)   encode raw 
,"referrer_path" varchar(1024)   encode raw 
,"referrer_query" varchar(1024)   encode raw 
,"referrer_fragment" varchar(1024)   encode raw 
,"mouse_x" integer   encode raw 
,"mouse_y" integer   encode raw 
,"field_value" varchar(1024)   encode raw 
,"video_id" varchar(32)   encode raw 
,"video_author" varchar(128)   encode raw 
,"video_length" numeric(7,2)   encode raw 
,"video_state" varchar(16)   encode raw 
,"video_time" numeric(7,2)   encode raw 
,"video_title" varchar(1024)   encode raw 
,"video_url" varchar(2048)   encode raw 
,"video_volume" numeric(7,2)   encode raw 
,"custom_properties" varchar(1024)   encode raw 
,"event_sub_type" varchar(20)   encode raw 
,"category_id" varchar(64)   encode raw 
,"category_name" varchar(64)   encode raw 
,"quote_id" varchar(64)   encode raw 
,"order_id" varchar(64)   encode raw 
,"total" numeric(7,2)   encode raw 
,"revenue" numeric(7,2)   encode raw 
,"shipping" numeric(7,2)   encode raw 
,"shipping_method" varchar(64)   encode raw 
,"tax" numeric(7,2)   encode raw 
,"discount" numeric(7,2)   encode raw 
,"coupon" varchar(64)   encode raw 
,"quote_total_quantity" integer   encode raw 
,"quote_line_item_count" integer   encode raw 
)
 INTERLEAVED SORTKEY(timestamp_,event_sub_type,person_alias,session_id)
 ;
insert into public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_3_$mig  select * from public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_3;
analyze public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_3_$mig;
drop table public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_3 cascade;
alter table public.event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_3_$mig rename to event_ecommerce_baa1737b_948a_47c0_a276_045599390817_2016_3;
commit;
-- [22687] Analyzing Table 'event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_3'
-- [22686] Column Encoding will be modified for public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_3
begin;
lock table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_3;
create table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_3_$mig(
"id" character(24)   encode raw 
,"event_name" varchar(128)   encode raw 
,"pin_id" varchar(24)   encode raw 
,"timestamp_" timestamp    encode RAW 
,"person_alias" varchar(128)   encode raw 
,"visitor_id" varchar(128)   encode raw 
,"session_id" varchar(24)   encode raw 
,"element_tag" varchar(24)   encode raw 
,"attribute_id" varchar(64)   encode raw 
,"attribute_name" varchar(64)   encode raw 
,"attribute_type" varchar(24)   encode raw 
,"attribute_title" varchar(64)   encode raw 
,"attribute_alt" varchar(64)   encode raw 
,"attribute_src" varchar(256)   encode raw 
,"attribute_href" varchar(512)   encode raw 
,"attribute_class" varchar(64)   encode raw 
,"text_content" varchar(512)   encode raw 
,"xpath_full" varchar(2048)   encode raw 
,"xpath_ancestor" varchar(512)   encode raw 
,"xpath_no_index" varchar(512)   encode raw 
,"xpath_index" varchar(512)   encode raw 
,"ip_address" varchar(64)   encode raw 
,"geo_ip_country" varchar(64)   encode raw 
,"geo_ip_city" varchar(64)   encode raw 
,"geo_ip_region" varchar(64)   encode raw 
,"geo_ip_postal" varchar(10)   encode raw 
,"geo_ip_longitude" numeric(7,4)   encode raw 
,"geo_ip_latitude" numeric(7,4)   encode raw 
,"user_agent" varchar(256)   encode lzo 
,"operating_system" varchar(64)   encode raw 
,"device_type" varchar(64)   encode raw 
,"browser" varchar(64)   encode raw 
,"browser_major" varchar(64)   encode raw 
,"page_title" varchar(1024)   encode raw 
,"location" varchar(2048)   encode lzo 
,"location_host" varchar(256)   encode raw 
,"location_path" varchar(1024)   encode raw 
,"location_query" varchar(1024)   encode raw 
,"location_fragment" varchar(1024)   encode raw 
,"referrer" varchar(2048)   encode lzo 
,"referrer_host" varchar(256)   encode raw 
,"referrer_path" varchar(1024)   encode raw 
,"referrer_query" varchar(1024)   encode raw 
,"referrer_fragment" varchar(1024)   encode raw 
,"mouse_x" integer   encode raw 
,"mouse_y" integer   encode raw 
,"field_value" varchar(1024)   encode raw 
,"video_id" varchar(32)   encode raw 
,"video_author" varchar(128)   encode raw 
,"video_length" numeric(7,2)   encode raw 
,"video_state" varchar(16)   encode raw 
,"video_time" numeric(7,2)   encode raw 
,"video_title" varchar(1024)   encode raw 
,"video_url" varchar(2048)   encode raw 
,"video_volume" numeric(7,2)   encode raw 
,"custom_properties" varchar(1024)   encode raw 
,"event_sub_type" varchar(20)   encode raw 
,"category_id" varchar(64)   encode raw 
,"category_name" varchar(64)   encode raw 
,"quote_id" varchar(64)   encode raw 
,"order_id" varchar(64)   encode raw 
,"total" numeric(7,2)   encode raw 
,"revenue" numeric(7,2)   encode raw 
,"shipping" numeric(7,2)   encode raw 
,"shipping_method" varchar(64)   encode raw 
,"tax" numeric(7,2)   encode raw 
,"discount" numeric(7,2)   encode raw 
,"coupon" varchar(64)   encode raw 
,"quote_total_quantity" integer   encode raw 
,"quote_line_item_count" integer   encode raw 
)
 INTERLEAVED SORTKEY(timestamp_,event_sub_type,person_alias,session_id)
 ;
insert into public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_3_$mig  select * from public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_3;
analyze public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_3_$mig;
drop table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_3 cascade;
alter table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_3_$mig rename to event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_3;
commit;
-- [22686] Analyzing Table 'event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2015_12'
-- [22687] Column Encoding will be modified for public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_3
begin;
lock table public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_3;
create table public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_3_$mig(
"id" character(24)   encode lzo 
,"event_name" varchar(128)   encode lzo 
,"pin_id" varchar(24)   encode raw 
,"timestamp_" timestamp    encode RAW 
,"person_alias" varchar(128)   encode lzo 
,"visitor_id" varchar(128)   encode lzo 
,"session_id" varchar(24)   encode lzo 
,"element_tag" varchar(24)   encode raw 
,"attribute_id" varchar(64)   encode raw 
,"attribute_name" varchar(64)   encode raw 
,"attribute_type" varchar(24)   encode raw 
,"attribute_title" varchar(64)   encode raw 
,"attribute_alt" varchar(64)   encode raw 
,"attribute_src" varchar(256)   encode raw 
,"attribute_href" varchar(512)   encode raw 
,"attribute_class" varchar(64)   encode raw 
,"text_content" varchar(512)   encode raw 
,"xpath_full" varchar(2048)   encode raw 
,"xpath_ancestor" varchar(512)   encode raw 
,"xpath_no_index" varchar(512)   encode raw 
,"xpath_index" varchar(512)   encode raw 
,"ip_address" varchar(64)   encode lzo 
,"geo_ip_country" varchar(64)   encode lzo 
,"geo_ip_city" varchar(64)   encode lzo 
,"geo_ip_region" varchar(64)   encode lzo 
,"geo_ip_postal" varchar(10)   encode raw 
,"geo_ip_longitude" numeric(7,4)   encode raw 
,"geo_ip_latitude" numeric(7,4)   encode raw 
,"user_agent" varchar(256)   encode lzo 
,"operating_system" varchar(64)   encode lzo 
,"device_type" varchar(64)   encode lzo 
,"browser" varchar(64)   encode lzo 
,"browser_major" varchar(64)   encode raw 
,"page_title" varchar(1024)   encode lzo 
,"location" varchar(2048)   encode lzo 
,"location_host" varchar(256)   encode lzo 
,"location_path" varchar(1024)   encode lzo 
,"location_query" varchar(1024)   encode lzo 
,"location_fragment" varchar(1024)   encode raw 
,"referrer" varchar(2048)   encode lzo 
,"referrer_host" varchar(256)   encode lzo 
,"referrer_path" varchar(1024)   encode lzo 
,"referrer_query" varchar(1024)   encode lzo 
,"referrer_fragment" varchar(1024)   encode raw 
,"mouse_x" integer   encode raw 
,"mouse_y" integer   encode raw 
,"field_value" varchar(1024)   encode raw 
,"video_id" varchar(32)   encode raw 
,"video_author" varchar(128)   encode raw 
,"video_length" numeric(7,2)   encode raw 
,"video_state" varchar(16)   encode raw 
,"video_time" numeric(7,2)   encode raw 
,"video_title" varchar(1024)   encode raw 
,"video_url" varchar(2048)   encode raw 
,"video_volume" numeric(7,2)   encode raw 
,"custom_properties" varchar(1024)   encode raw 
,"event_sub_type" varchar(20)   encode lzo 
,"category_id" varchar(64)   encode raw 
,"category_name" varchar(64)   encode raw 
,"quote_id" varchar(64)   encode raw 
,"order_id" varchar(64)   encode raw 
,"total" numeric(7,2)   encode raw 
,"revenue" numeric(7,2)   encode raw 
,"shipping" numeric(7,2)   encode raw 
,"shipping_method" varchar(64)   encode raw 
,"tax" numeric(7,2)   encode raw 
,"discount" numeric(7,2)   encode raw 
,"coupon" varchar(64)   encode raw 
,"quote_total_quantity" integer   encode raw 
,"quote_line_item_count" integer   encode raw 
)
 INTERLEAVED SORTKEY(timestamp_,event_sub_type,person_alias,session_id)
 ;
insert into public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_3_$mig  select * from public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_3;
analyze public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_3_$mig;
drop table public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_3 cascade;
alter table public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_3_$mig rename to event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_3;
commit;
-- [22687] Analyzing Table 'event_ecommerce_4525a619_18d2_442b_a199_6455ceed0dc8_2016_4'
-- [22686] Column Encoding will be modified for public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2015_12
begin;
lock table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2015_12;
create table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2015_12_$mig(
"id" character(24)   encode raw 
,"event_name" varchar(128)   encode raw 
,"pin_id" varchar(24)   encode raw 
,"timestamp_" timestamp    encode RAW 
,"person_alias" varchar(128)   encode raw 
,"visitor_id" varchar(128)   encode raw 
,"session_id" varchar(24)   encode raw 
,"element_tag" varchar(24)   encode raw 
,"attribute_id" varchar(64)   encode raw 
,"attribute_name" varchar(64)   encode raw 
,"attribute_type" varchar(24)   encode raw 
,"attribute_title" varchar(64)   encode raw 
,"attribute_alt" varchar(64)   encode raw 
,"attribute_src" varchar(256)   encode raw 
,"attribute_href" varchar(512)   encode raw 
,"attribute_class" varchar(64)   encode raw 
,"text_content" varchar(512)   encode raw 
,"xpath_full" varchar(2048)   encode raw 
,"xpath_ancestor" varchar(512)   encode raw 
,"xpath_no_index" varchar(512)   encode raw 
,"xpath_index" varchar(512)   encode raw 
,"ip_address" varchar(64)   encode raw 
,"geo_ip_country" varchar(64)   encode raw 
,"geo_ip_city" varchar(64)   encode raw 
,"geo_ip_region" varchar(64)   encode raw 
,"geo_ip_postal" varchar(10)   encode raw 
,"geo_ip_longitude" numeric(7,4)   encode raw 
,"geo_ip_latitude" numeric(7,4)   encode raw 
,"user_agent" varchar(256)   encode lzo 
,"operating_system" varchar(64)   encode raw 
,"device_type" varchar(64)   encode raw 
,"browser" varchar(64)   encode raw 
,"browser_major" varchar(64)   encode raw 
,"page_title" varchar(1024)   encode raw 
,"location" varchar(2048)   encode lzo 
,"location_host" varchar(256)   encode raw 
,"location_path" varchar(1024)   encode raw 
,"location_query" varchar(1024)   encode raw 
,"location_fragment" varchar(1024)   encode raw 
,"referrer" varchar(2048)   encode lzo 
,"referrer_host" varchar(256)   encode raw 
,"referrer_path" varchar(1024)   encode raw 
,"referrer_query" varchar(1024)   encode raw 
,"referrer_fragment" varchar(1024)   encode raw 
,"mouse_x" integer   encode raw 
,"mouse_y" integer   encode raw 
,"field_value" varchar(1024)   encode raw 
,"video_id" varchar(32)   encode raw 
,"video_author" varchar(128)   encode raw 
,"video_length" numeric(7,2)   encode raw 
,"video_state" varchar(16)   encode raw 
,"video_time" numeric(7,2)   encode raw 
,"video_title" varchar(1024)   encode raw 
,"video_url" varchar(2048)   encode raw 
,"video_volume" numeric(7,2)   encode raw 
,"custom_properties" varchar(1024)   encode raw 
,"event_sub_type" varchar(20)   encode raw 
,"category_id" varchar(64)   encode raw 
,"category_name" varchar(64)   encode raw 
,"quote_id" varchar(64)   encode raw 
,"order_id" varchar(64)   encode raw 
,"total" numeric(7,2)   encode raw 
,"revenue" numeric(7,2)   encode raw 
,"shipping" numeric(7,2)   encode raw 
,"shipping_method" varchar(64)   encode raw 
,"tax" numeric(7,2)   encode raw 
,"discount" numeric(7,2)   encode raw 
,"coupon" varchar(64)   encode raw 
,"quote_total_quantity" integer   encode raw 
,"quote_line_item_count" integer   encode raw 
)
 INTERLEAVED SORTKEY(timestamp_,event_sub_type,person_alias,session_id)
 ;
insert into public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2015_12_$mig  select * from public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2015_12;
analyze public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2015_12_$mig;
drop table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2015_12 cascade;
alter table public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2015_12_$mig rename to event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2015_12;
commit;
-- [22686] Analyzing Table 'event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_4'
-- [22687] No encoding modifications required for public.event_ecommerce_4525a619_18d2_442b_a199_6455ceed0dc8_2016_4
-- [22687] Analyzing Table 'event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_2'
-- [22686] No encoding modifications required for public.event_ecommerce_4070ba14_f081_41cb_9ef7_9dd385934da7_2016_4
-- [22686] Analyzing Table 'event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_4'
-- [22687] Column Encoding will be modified for public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_2
begin;
lock table public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_2;
create table public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_2_$mig(
"id" character(24)   encode lzo 
,"event_name" varchar(128)   encode raw 
,"pin_id" varchar(24)   encode raw 
,"timestamp_" timestamp    encode RAW 
,"person_alias" varchar(128)   encode lzo 
,"visitor_id" varchar(128)   encode lzo 
,"session_id" varchar(24)   encode lzo 
,"element_tag" varchar(24)   encode raw 
,"attribute_id" varchar(64)   encode raw 
,"attribute_name" varchar(64)   encode raw 
,"attribute_type" varchar(24)   encode raw 
,"attribute_title" varchar(64)   encode raw 
,"attribute_alt" varchar(64)   encode raw 
,"attribute_src" varchar(256)   encode raw 
,"attribute_href" varchar(512)   encode raw 
,"attribute_class" varchar(64)   encode raw 
,"text_content" varchar(512)   encode raw 
,"xpath_full" varchar(2048)   encode raw 
,"xpath_ancestor" varchar(512)   encode raw 
,"xpath_no_index" varchar(512)   encode raw 
,"xpath_index" varchar(512)   encode raw 
,"ip_address" varchar(64)   encode raw 
,"geo_ip_country" varchar(64)   encode raw 
,"geo_ip_city" varchar(64)   encode raw 
,"geo_ip_region" varchar(64)   encode raw 
,"geo_ip_postal" varchar(10)   encode raw 
,"geo_ip_longitude" numeric(7,4)   encode raw 
,"geo_ip_latitude" numeric(7,4)   encode raw 
,"user_agent" varchar(256)   encode lzo 
,"operating_system" varchar(64)   encode raw 
,"device_type" varchar(64)   encode raw 
,"browser" varchar(64)   encode raw 
,"browser_major" varchar(64)   encode raw 
,"page_title" varchar(1024)   encode lzo 
,"location" varchar(2048)   encode lzo 
,"location_host" varchar(256)   encode lzo 
,"location_path" varchar(1024)   encode lzo 
,"location_query" varchar(1024)   encode lzo 
,"location_fragment" varchar(1024)   encode raw 
,"referrer" varchar(2048)   encode lzo 
,"referrer_host" varchar(256)   encode raw 
,"referrer_path" varchar(1024)   encode lzo 
,"referrer_query" varchar(1024)   encode lzo 
,"referrer_fragment" varchar(1024)   encode raw 
,"mouse_x" integer   encode raw 
,"mouse_y" integer   encode raw 
,"field_value" varchar(1024)   encode raw 
,"video_id" varchar(32)   encode raw 
,"video_author" varchar(128)   encode raw 
,"video_length" numeric(7,2)   encode raw 
,"video_state" varchar(16)   encode raw 
,"video_time" numeric(7,2)   encode raw 
,"video_title" varchar(1024)   encode raw 
,"video_url" varchar(2048)   encode raw 
,"video_volume" numeric(7,2)   encode raw 
,"custom_properties" varchar(1024)   encode raw 
,"event_sub_type" varchar(20)   encode lzo 
,"category_id" varchar(64)   encode raw 
,"category_name" varchar(64)   encode raw 
,"quote_id" varchar(64)   encode raw 
,"order_id" varchar(64)   encode raw 
,"total" numeric(7,2)   encode raw 
,"revenue" numeric(7,2)   encode raw 
,"shipping" numeric(7,2)   encode raw 
,"shipping_method" varchar(64)   encode raw 
,"tax" numeric(7,2)   encode raw 
,"discount" numeric(7,2)   encode raw 
,"coupon" varchar(64)   encode raw 
,"quote_total_quantity" integer   encode raw 
,"quote_line_item_count" integer   encode raw 
)
 INTERLEAVED SORTKEY(timestamp_,event_sub_type,person_alias,session_id)
 ;
insert into public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_2_$mig  select * from public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_2;
analyze public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_2_$mig;
drop table public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_2 cascade;
alter table public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_2_$mig rename to event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_2;
commit;
-- [22686] Column Encoding will be modified for public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_4
begin;
lock table public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_4;
create table public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_4_$mig(
"id" character(24)   encode raw 
,"event_name" varchar(128)   encode raw 
,"pin_id" varchar(24)   encode raw 
,"timestamp_" timestamp    encode RAW 
,"person_alias" varchar(128)   encode raw 
,"visitor_id" varchar(128)   encode raw 
,"session_id" varchar(24)   encode raw 
,"element_tag" varchar(24)   encode raw 
,"attribute_id" varchar(64)   encode raw 
,"attribute_name" varchar(64)   encode raw 
,"attribute_type" varchar(24)   encode raw 
,"attribute_title" varchar(64)   encode raw 
,"attribute_alt" varchar(64)   encode raw 
,"attribute_src" varchar(256)   encode raw 
,"attribute_href" varchar(512)   encode raw 
,"attribute_class" varchar(64)   encode raw 
,"text_content" varchar(512)   encode raw 
,"xpath_full" varchar(2048)   encode raw 
,"xpath_ancestor" varchar(512)   encode raw 
,"xpath_no_index" varchar(512)   encode raw 
,"xpath_index" varchar(512)   encode raw 
,"ip_address" varchar(64)   encode raw 
,"geo_ip_country" varchar(64)   encode raw 
,"geo_ip_city" varchar(64)   encode raw 
,"geo_ip_region" varchar(64)   encode raw 
,"geo_ip_postal" varchar(10)   encode raw 
,"geo_ip_longitude" numeric(7,4)   encode raw 
,"geo_ip_latitude" numeric(7,4)   encode raw 
,"user_agent" varchar(256)   encode lzo 
,"operating_system" varchar(64)   encode raw 
,"device_type" varchar(64)   encode raw 
,"browser" varchar(64)   encode raw 
,"browser_major" varchar(64)   encode raw 
,"page_title" varchar(1024)   encode raw 
,"location" varchar(2048)   encode lzo 
,"location_host" varchar(256)   encode raw 
,"location_path" varchar(1024)   encode raw 
,"location_query" varchar(1024)   encode raw 
,"location_fragment" varchar(1024)   encode raw 
,"referrer" varchar(2048)   encode lzo 
,"referrer_host" varchar(256)   encode raw 
,"referrer_path" varchar(1024)   encode raw 
,"referrer_query" varchar(1024)   encode raw 
,"referrer_fragment" varchar(1024)   encode raw 
,"mouse_x" integer   encode raw 
,"mouse_y" integer   encode raw 
,"field_value" varchar(1024)   encode raw 
,"video_id" varchar(32)   encode raw 
,"video_author" varchar(128)   encode raw 
,"video_length" numeric(7,2)   encode raw 
,"video_state" varchar(16)   encode raw 
,"video_time" numeric(7,2)   encode raw 
,"video_title" varchar(1024)   encode raw 
,"video_url" varchar(2048)   encode raw 
,"video_volume" numeric(7,2)   encode raw 
,"custom_properties" varchar(1024)   encode raw 
,"event_sub_type" varchar(20)   encode raw 
,"category_id" varchar(64)   encode raw 
,"category_name" varchar(64)   encode raw 
,"quote_id" varchar(64)   encode raw 
,"order_id" varchar(64)   encode raw 
,"total" numeric(7,2)   encode raw 
,"revenue" numeric(7,2)   encode raw 
,"shipping" numeric(7,2)   encode raw 
,"shipping_method" varchar(64)   encode raw 
,"tax" numeric(7,2)   encode raw 
,"discount" numeric(7,2)   encode raw 
,"coupon" varchar(64)   encode raw 
,"quote_total_quantity" integer   encode raw 
,"quote_line_item_count" integer   encode raw 
)
 INTERLEAVED SORTKEY(timestamp_,event_sub_type,person_alias,session_id)
 ;
insert into public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_4_$mig  select * from public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_4;
analyze public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_4_$mig;
drop table public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_4 cascade;
alter table public.event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_4_$mig rename to event_ecommerce_ace8b421_634f_4060_9118_ffc36db704dc_2016_4;
commit;
vacuum delete only;
-- [22683] Processing Complete
