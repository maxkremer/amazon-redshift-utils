-- [3545] Connected to tfclickstream.civjv74w6cxl.us-west-2.redshift.amazonaws.com:5439:clickstream as tfdev
-- [3545] Analyzing Schema 'public' for Columnar Encoding Optimisations with 2 Threads...
-- [3545] Extracting Candidate Table List...
-- [3545] Analyzing 43 table(s)
-- [3549] Analyzing Table 'person_67a0a6e9_aee5_4e0c_a4d6_0f7648da7b0c'
-- [3550] Analyzing Table 'person_64f41191_8606_4170_a663_d35149f8299f'
-- [3549] No encoding modifications required for public.person_67a0a6e9_aee5_4e0c_a4d6_0f7648da7b0c
-- [3549] Analyzing Table 'person_5c60a6d5_4f86_462d_aed1_2c9521f1d6a4'
-- [3550] No encoding modifications required for public.person_64f41191_8606_4170_a663_d35149f8299f
-- [3550] Analyzing Table 'person_1c4d2436_d118_40f6_934c_5259b3a0c167'
-- [3549] No encoding modifications required for public.person_5c60a6d5_4f86_462d_aed1_2c9521f1d6a4
-- [3549] Analyzing Table 'person_03cad598_20d9_48e7_9f6c_82f603315d33'
-- [3549] No encoding modifications required for public.person_03cad598_20d9_48e7_9f6c_82f603315d33
-- [3549] Analyzing Table 'person_64ddd2fc_800e_418e_943a_23932f31d82e'
-- [3550] No encoding modifications required for public.person_1c4d2436_d118_40f6_934c_5259b3a0c167
-- [3550] Analyzing Table 'person_f4aec5c0_f218_4765_888a_0d483ce95a55'
-- [3549] No encoding modifications required for public.person_64ddd2fc_800e_418e_943a_23932f31d82e
-- [3549] Analyzing Table 'person_6f40428d_6a31_4c26_af3b_cac29f98f442'
-- [3550] No encoding modifications required for public.person_f4aec5c0_f218_4765_888a_0d483ce95a55
-- [3550] Analyzing Table 'person_75040935_823d_4158_b990_056e8d493b78'
-- [3549] No encoding modifications required for public.person_6f40428d_6a31_4c26_af3b_cac29f98f442
-- [3549] Analyzing Table 'person_c5e74c42_3923_4032_9fe8_b9f5dc21d5c9'
-- [3550] No encoding modifications required for public.person_75040935_823d_4158_b990_056e8d493b78
-- [3550] Analyzing Table 'person_33b5fc33_b1c1_4bc6_9286_6f609bd08cf5'
-- [3549] No encoding modifications required for public.person_c5e74c42_3923_4032_9fe8_b9f5dc21d5c9
-- [3549] Analyzing Table 'person_5c1b3b5a_32fe_4166_a839_599ebcecab10'
-- [3550] No encoding modifications required for public.person_33b5fc33_b1c1_4bc6_9286_6f609bd08cf5
-- [3550] Analyzing Table 'person_66a79a93_ab55_4506_846f_3ce02046e317'
-- [3549] No encoding modifications required for public.person_5c1b3b5a_32fe_4166_a839_599ebcecab10
-- [3549] Analyzing Table 'person_60df6d63_0994_49f1_963b_8127495ab890'
-- [3550] Column Encoding will be modified for public.person_66a79a93_ab55_4506_846f_3ce02046e317
begin;
lock table public.person_66a79a93_ab55_4506_846f_3ce02046e317;
create table public.person_66a79a93_ab55_4506_846f_3ce02046e317_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode raw 
,"last_fc_update" timestamp    encode raw 
,"custom_traits" varchar(4096)   encode raw 
,"email_address" varchar(64)   encode raw 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode raw 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode raw 
,"prefer_language" varchar(16)   encode raw 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode raw 
,"first_seen" timestamp    encode raw 
,"first_location" varchar(2048)   encode raw 
,"first_location_host" varchar(256)   encode raw 
,"first_location_path" varchar(1024)   encode raw 
,"first_location_query" varchar(1024)   encode raw 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode raw 
,"first_referrer_host" varchar(256)   encode raw 
,"first_referrer_path" varchar(1024)   encode raw 
,"first_referrer_query" varchar(1024)   encode raw 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode raw 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode raw 
,"last_ip_address" varchar(64)   encode raw 
,"last_geo_ip_country" varchar(64)   encode raw 
,"last_geo_ip_city" varchar(64)   encode raw 
,"last_geo_ip_region" varchar(64)   encode raw 
,"last_geo_ip_postal" varchar(10)   encode raw 
,"last_geo_ip_longitude" numeric(7,4)   encode raw 
,"last_geo_ip_latitude" numeric(7,4)   encode raw 
,"last_session_id" varchar(24)   encode raw 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode raw 
,"orders_total" numeric(7,2)   encode raw 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(7,2)   encode raw 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode raw 
,"last_device_type" varchar(64)   encode raw 
,"last_browser" varchar(64)   encode raw 
,"last_browser_major" varchar(64)   encode raw 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_66a79a93_ab55_4506_846f_3ce02046e317_$mig  select * from public.person_66a79a93_ab55_4506_846f_3ce02046e317;
analyze public.person_66a79a93_ab55_4506_846f_3ce02046e317_$mig;
drop table public.person_66a79a93_ab55_4506_846f_3ce02046e317 cascade;
alter table public.person_66a79a93_ab55_4506_846f_3ce02046e317_$mig rename to person_66a79a93_ab55_4506_846f_3ce02046e317;
commit;
-- [3550] Analyzing Table 'person_ded5d6b4_7581_4f4a_bdd0_5b15ad719603'
-- [3549] No encoding modifications required for public.person_60df6d63_0994_49f1_963b_8127495ab890
-- [3549] Analyzing Table 'person_addb4a43_8e9f_43b2_a5b7_019f701d8161'
-- [3550] No encoding modifications required for public.person_ded5d6b4_7581_4f4a_bdd0_5b15ad719603
-- [3550] Analyzing Table 'person_4315fd1b_2436_492a_9772_512acca8d672'
-- [3549] No encoding modifications required for public.person_addb4a43_8e9f_43b2_a5b7_019f701d8161
-- [3549] Analyzing Table 'person_baa1737b_948a_47c0_a276_045599390817'
-- [3550] No encoding modifications required for public.person_4315fd1b_2436_492a_9772_512acca8d672
-- [3550] Analyzing Table 'person_22bc9bb5_a182_476e_bbb9_734a485bdcc7'
-- [3549] Column Encoding will be modified for public.person_baa1737b_948a_47c0_a276_045599390817
begin;
lock table public.person_baa1737b_948a_47c0_a276_045599390817;
create table public.person_baa1737b_948a_47c0_a276_045599390817_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode raw 
,"last_fc_update" timestamp    encode raw 
,"custom_traits" varchar(4096)   encode raw 
,"email_address" varchar(64)   encode raw 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode raw 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode raw 
,"prefer_language" varchar(16)   encode raw 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode raw 
,"first_seen" timestamp    encode raw 
,"first_location" varchar(2048)   encode lzo 
,"first_location_host" varchar(256)   encode lzo 
,"first_location_path" varchar(1024)   encode raw 
,"first_location_query" varchar(1024)   encode raw 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode lzo 
,"first_referrer_host" varchar(256)   encode raw 
,"first_referrer_path" varchar(1024)   encode lzo 
,"first_referrer_query" varchar(1024)   encode raw 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode raw 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode raw 
,"last_ip_address" varchar(64)   encode raw 
,"last_geo_ip_country" varchar(64)   encode raw 
,"last_geo_ip_city" varchar(64)   encode raw 
,"last_geo_ip_region" varchar(64)   encode raw 
,"last_geo_ip_postal" varchar(10)   encode raw 
,"last_geo_ip_longitude" numeric(7,4)   encode raw 
,"last_geo_ip_latitude" numeric(7,4)   encode raw 
,"last_session_id" varchar(24)   encode lzo 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode raw 
,"orders_total" numeric(7,2)   encode raw 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(7,2)   encode raw 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode raw 
,"last_device_type" varchar(64)   encode raw 
,"last_browser" varchar(64)   encode raw 
,"last_browser_major" varchar(64)   encode raw 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_baa1737b_948a_47c0_a276_045599390817_$mig  select * from public.person_baa1737b_948a_47c0_a276_045599390817;
analyze public.person_baa1737b_948a_47c0_a276_045599390817_$mig;
drop table public.person_baa1737b_948a_47c0_a276_045599390817 cascade;
alter table public.person_baa1737b_948a_47c0_a276_045599390817_$mig rename to person_baa1737b_948a_47c0_a276_045599390817;
commit;
-- [3549] Analyzing Table 'person_1bda7836_aaa0_465e_9057_66aa5067c397'
-- [3550] Column Encoding will be modified for public.person_22bc9bb5_a182_476e_bbb9_734a485bdcc7
begin;
lock table public.person_22bc9bb5_a182_476e_bbb9_734a485bdcc7;
create table public.person_22bc9bb5_a182_476e_bbb9_734a485bdcc7_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode raw 
,"last_fc_update" timestamp    encode raw 
,"custom_traits" varchar(4096)   encode raw 
,"email_address" varchar(64)   encode raw 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode raw 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode raw 
,"prefer_language" varchar(16)   encode raw 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode raw 
,"first_seen" timestamp    encode raw 
,"first_location" varchar(2048)   encode lzo 
,"first_location_host" varchar(256)   encode raw 
,"first_location_path" varchar(1024)   encode raw 
,"first_location_query" varchar(1024)   encode raw 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode lzo 
,"first_referrer_host" varchar(256)   encode raw 
,"first_referrer_path" varchar(1024)   encode raw 
,"first_referrer_query" varchar(1024)   encode raw 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode raw 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode raw 
,"last_ip_address" varchar(64)   encode raw 
,"last_geo_ip_country" varchar(64)   encode raw 
,"last_geo_ip_city" varchar(64)   encode raw 
,"last_geo_ip_region" varchar(64)   encode raw 
,"last_geo_ip_postal" varchar(10)   encode raw 
,"last_geo_ip_longitude" numeric(7,4)   encode raw 
,"last_geo_ip_latitude" numeric(7,4)   encode raw 
,"last_session_id" varchar(24)   encode lzo 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode raw 
,"orders_total" numeric(7,2)   encode raw 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(7,2)   encode raw 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode raw 
,"last_device_type" varchar(64)   encode raw 
,"last_browser" varchar(64)   encode raw 
,"last_browser_major" varchar(64)   encode raw 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_22bc9bb5_a182_476e_bbb9_734a485bdcc7_$mig  select * from public.person_22bc9bb5_a182_476e_bbb9_734a485bdcc7;
analyze public.person_22bc9bb5_a182_476e_bbb9_734a485bdcc7_$mig;
drop table public.person_22bc9bb5_a182_476e_bbb9_734a485bdcc7 cascade;
alter table public.person_22bc9bb5_a182_476e_bbb9_734a485bdcc7_$mig rename to person_22bc9bb5_a182_476e_bbb9_734a485bdcc7;
commit;
-- [3550] Analyzing Table 'person_6d7f6fe6_084e_488b_9fbb_ebadc2ba9131'
-- [3549] No encoding modifications required for public.person_1bda7836_aaa0_465e_9057_66aa5067c397
-- [3549] Analyzing Table 'person_4525a619_18d2_442b_a199_6455ceed0dc8'
-- [3550] No encoding modifications required for public.person_6d7f6fe6_084e_488b_9fbb_ebadc2ba9131
-- [3550] Analyzing Table 'person_c7e2876d_3de3_490d_bd07_20cf18d5ab34'
-- [3550] Column Encoding will be modified for public.person_c7e2876d_3de3_490d_bd07_20cf18d5ab34
begin;
lock table public.person_c7e2876d_3de3_490d_bd07_20cf18d5ab34;
create table public.person_c7e2876d_3de3_490d_bd07_20cf18d5ab34_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode raw 
,"last_fc_update" timestamp    encode raw 
,"custom_traits" varchar(4096)   encode raw 
,"email_address" varchar(64)   encode raw 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode raw 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode raw 
,"prefer_language" varchar(16)   encode raw 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode raw 
,"first_seen" timestamp    encode raw 
,"first_location" varchar(2048)   encode lzo 
,"first_location_host" varchar(256)   encode raw 
,"first_location_path" varchar(1024)   encode lzo 
,"first_location_query" varchar(1024)   encode raw 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode lzo 
,"first_referrer_host" varchar(256)   encode raw 
,"first_referrer_path" varchar(1024)   encode raw 
,"first_referrer_query" varchar(1024)   encode raw 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode raw 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode raw 
,"last_ip_address" varchar(64)   encode raw 
,"last_geo_ip_country" varchar(64)   encode raw 
,"last_geo_ip_city" varchar(64)   encode raw 
,"last_geo_ip_region" varchar(64)   encode raw 
,"last_geo_ip_postal" varchar(10)   encode raw 
,"last_geo_ip_longitude" numeric(7,4)   encode raw 
,"last_geo_ip_latitude" numeric(7,4)   encode raw 
,"last_session_id" varchar(24)   encode raw 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode raw 
,"orders_total" numeric(7,2)   encode raw 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(7,2)   encode raw 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode raw 
,"last_device_type" varchar(64)   encode raw 
,"last_browser" varchar(64)   encode raw 
,"last_browser_major" varchar(64)   encode raw 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_c7e2876d_3de3_490d_bd07_20cf18d5ab34_$mig  select * from public.person_c7e2876d_3de3_490d_bd07_20cf18d5ab34;
analyze public.person_c7e2876d_3de3_490d_bd07_20cf18d5ab34_$mig;
drop table public.person_c7e2876d_3de3_490d_bd07_20cf18d5ab34 cascade;
alter table public.person_c7e2876d_3de3_490d_bd07_20cf18d5ab34_$mig rename to person_c7e2876d_3de3_490d_bd07_20cf18d5ab34;
commit;
-- [3550] Analyzing Table 'person_7f396110_7b68_4b7b_903a_92946508172f'
-- [3549] No encoding modifications required for public.person_4525a619_18d2_442b_a199_6455ceed0dc8
-- [3549] Analyzing Table 'person_321c6266_a242_4f33_9664_7bcb8ff93758'
-- [3550] Column Encoding will be modified for public.person_7f396110_7b68_4b7b_903a_92946508172f
begin;
lock table public.person_7f396110_7b68_4b7b_903a_92946508172f;
create table public.person_7f396110_7b68_4b7b_903a_92946508172f_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode raw 
,"last_fc_update" timestamp    encode raw 
,"custom_traits" varchar(4096)   encode raw 
,"email_address" varchar(64)   encode raw 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode raw 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode raw 
,"prefer_language" varchar(16)   encode raw 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode raw 
,"first_seen" timestamp    encode raw 
,"first_location" varchar(2048)   encode raw 
,"first_location_host" varchar(256)   encode raw 
,"first_location_path" varchar(1024)   encode raw 
,"first_location_query" varchar(1024)   encode raw 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode raw 
,"first_referrer_host" varchar(256)   encode raw 
,"first_referrer_path" varchar(1024)   encode raw 
,"first_referrer_query" varchar(1024)   encode raw 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode raw 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode raw 
,"last_ip_address" varchar(64)   encode raw 
,"last_geo_ip_country" varchar(64)   encode raw 
,"last_geo_ip_city" varchar(64)   encode raw 
,"last_geo_ip_region" varchar(64)   encode raw 
,"last_geo_ip_postal" varchar(10)   encode raw 
,"last_geo_ip_longitude" numeric(7,4)   encode raw 
,"last_geo_ip_latitude" numeric(7,4)   encode raw 
,"last_session_id" varchar(24)   encode raw 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode raw 
,"orders_total" numeric(7,2)   encode raw 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(7,2)   encode raw 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode raw 
,"last_operating_system" varchar(64)   encode raw 
,"last_device_type" varchar(64)   encode raw 
,"last_browser" varchar(64)   encode raw 
,"last_browser_major" varchar(64)   encode raw 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_7f396110_7b68_4b7b_903a_92946508172f_$mig  select * from public.person_7f396110_7b68_4b7b_903a_92946508172f;
analyze public.person_7f396110_7b68_4b7b_903a_92946508172f_$mig;
drop table public.person_7f396110_7b68_4b7b_903a_92946508172f cascade;
alter table public.person_7f396110_7b68_4b7b_903a_92946508172f_$mig rename to person_7f396110_7b68_4b7b_903a_92946508172f;
commit;
-- [3550] Analyzing Table 'person_e1dbcd31_d33c_413d_a483_113b5f8ca0da'
-- [3549] Column Encoding will be modified for public.person_321c6266_a242_4f33_9664_7bcb8ff93758
begin;
lock table public.person_321c6266_a242_4f33_9664_7bcb8ff93758;
create table public.person_321c6266_a242_4f33_9664_7bcb8ff93758_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode raw 
,"last_fc_update" timestamp    encode lzo 
,"custom_traits" varchar(4096)   encode lzo 
,"email_address" varchar(64)   encode raw 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode raw 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode lzo 
,"prefer_language" varchar(16)   encode lzo 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode raw 
,"first_seen" timestamp    encode lzo 
,"first_location" varchar(2048)   encode lzo 
,"first_location_host" varchar(256)   encode lzo 
,"first_location_path" varchar(1024)   encode lzo 
,"first_location_query" varchar(1024)   encode lzo 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode lzo 
,"first_referrer_host" varchar(256)   encode lzo 
,"first_referrer_path" varchar(1024)   encode lzo 
,"first_referrer_query" varchar(1024)   encode lzo 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode raw 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode lzo 
,"last_ip_address" varchar(64)   encode lzo 
,"last_geo_ip_country" varchar(64)   encode lzo 
,"last_geo_ip_city" varchar(64)   encode lzo 
,"last_geo_ip_region" varchar(64)   encode text255 
,"last_geo_ip_postal" varchar(10)   encode lzo 
,"last_geo_ip_longitude" numeric(7,4)   encode lzo 
,"last_geo_ip_latitude" numeric(7,4)   encode lzo 
,"last_session_id" varchar(24)   encode lzo 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode raw 
,"orders_total" numeric(7,2)   encode lzo 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(7,2)   encode lzo 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode lzo 
,"last_device_type" varchar(64)   encode lzo 
,"last_browser" varchar(64)   encode lzo 
,"last_browser_major" varchar(64)   encode lzo 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode lzo 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_321c6266_a242_4f33_9664_7bcb8ff93758_$mig  select * from public.person_321c6266_a242_4f33_9664_7bcb8ff93758;
analyze public.person_321c6266_a242_4f33_9664_7bcb8ff93758_$mig;
drop table public.person_321c6266_a242_4f33_9664_7bcb8ff93758 cascade;
alter table public.person_321c6266_a242_4f33_9664_7bcb8ff93758_$mig rename to person_321c6266_a242_4f33_9664_7bcb8ff93758;
commit;
-- [3549] Analyzing Table 'person_0662b6d7_286e_4e35_a5e7_c667eb8c318f'
-- [3550] No encoding modifications required for public.person_e1dbcd31_d33c_413d_a483_113b5f8ca0da
-- [3550] Analyzing Table 'person_986b50f2_4499_4ce4_a577_a1b00d4909a0'
-- [3549] Column Encoding will be modified for public.person_0662b6d7_286e_4e35_a5e7_c667eb8c318f
begin;
lock table public.person_0662b6d7_286e_4e35_a5e7_c667eb8c318f;
create table public.person_0662b6d7_286e_4e35_a5e7_c667eb8c318f_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode raw 
,"last_fc_update" timestamp    encode raw 
,"custom_traits" varchar(4096)   encode raw 
,"email_address" varchar(64)   encode raw 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode raw 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode raw 
,"prefer_language" varchar(16)   encode raw 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode raw 
,"first_seen" timestamp    encode raw 
,"first_location" varchar(2048)   encode lzo 
,"first_location_host" varchar(256)   encode raw 
,"first_location_path" varchar(1024)   encode lzo 
,"first_location_query" varchar(1024)   encode raw 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode lzo 
,"first_referrer_host" varchar(256)   encode raw 
,"first_referrer_path" varchar(1024)   encode raw 
,"first_referrer_query" varchar(1024)   encode raw 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode raw 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode raw 
,"last_ip_address" varchar(64)   encode raw 
,"last_geo_ip_country" varchar(64)   encode raw 
,"last_geo_ip_city" varchar(64)   encode raw 
,"last_geo_ip_region" varchar(64)   encode raw 
,"last_geo_ip_postal" varchar(10)   encode raw 
,"last_geo_ip_longitude" numeric(7,4)   encode raw 
,"last_geo_ip_latitude" numeric(7,4)   encode raw 
,"last_session_id" varchar(24)   encode raw 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode raw 
,"orders_total" numeric(7,2)   encode raw 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(7,2)   encode raw 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode raw 
,"last_device_type" varchar(64)   encode raw 
,"last_browser" varchar(64)   encode raw 
,"last_browser_major" varchar(64)   encode raw 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_0662b6d7_286e_4e35_a5e7_c667eb8c318f_$mig  select * from public.person_0662b6d7_286e_4e35_a5e7_c667eb8c318f;
analyze public.person_0662b6d7_286e_4e35_a5e7_c667eb8c318f_$mig;
drop table public.person_0662b6d7_286e_4e35_a5e7_c667eb8c318f cascade;
alter table public.person_0662b6d7_286e_4e35_a5e7_c667eb8c318f_$mig rename to person_0662b6d7_286e_4e35_a5e7_c667eb8c318f;
commit;
-- [3549] Analyzing Table 'person_939db3b0_df84_4e85_9dd2_95caa2bcd2ed'
-- [3550] No encoding modifications required for public.person_986b50f2_4499_4ce4_a577_a1b00d4909a0
-- [3550] Analyzing Table 'person_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830'
-- [3549] No encoding modifications required for public.person_939db3b0_df84_4e85_9dd2_95caa2bcd2ed
-- [3549] Analyzing Table 'person_41f6f6f0_fcbe_4643_8e6c_19fc4d98962d'
-- [3550] Column Encoding will be modified for public.person_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830
begin;
lock table public.person_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830;
create table public.person_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode raw 
,"last_fc_update" timestamp    encode lzo 
,"custom_traits" varchar(4096)   encode lzo 
,"email_address" varchar(64)   encode raw 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode raw 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode lzo 
,"prefer_language" varchar(16)   encode bytedict 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode raw 
,"first_seen" timestamp    encode lzo 
,"first_location" varchar(2048)   encode lzo 
,"first_location_host" varchar(256)   encode lzo 
,"first_location_path" varchar(1024)   encode lzo 
,"first_location_query" varchar(1024)   encode lzo 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode lzo 
,"first_referrer_host" varchar(256)   encode lzo 
,"first_referrer_path" varchar(1024)   encode lzo 
,"first_referrer_query" varchar(1024)   encode lzo 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode raw 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode lzo 
,"last_ip_address" varchar(64)   encode lzo 
,"last_geo_ip_country" varchar(64)   encode lzo 
,"last_geo_ip_city" varchar(64)   encode lzo 
,"last_geo_ip_region" varchar(64)   encode text255 
,"last_geo_ip_postal" varchar(10)   encode raw 
,"last_geo_ip_longitude" numeric(7,4)   encode lzo 
,"last_geo_ip_latitude" numeric(7,4)   encode lzo 
,"last_session_id" varchar(24)   encode lzo 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode raw 
,"orders_total" numeric(7,2)   encode lzo 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(7,2)   encode lzo 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode lzo 
,"last_device_type" varchar(64)   encode lzo 
,"last_browser" varchar(64)   encode lzo 
,"last_browser_major" varchar(64)   encode raw 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830_$mig  select * from public.person_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830;
analyze public.person_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830_$mig;
drop table public.person_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830 cascade;
alter table public.person_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830_$mig rename to person_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830;
commit;
-- [3550] Analyzing Table 'person_927913da_1c37_48b8_9d88_cec5c1881aec'
-- [3549] No encoding modifications required for public.person_41f6f6f0_fcbe_4643_8e6c_19fc4d98962d
-- [3549] Analyzing Table 'person_fd9b03b4_9a19_4046_a8eb_f75f08830d07'
-- [3550] Column Encoding will be modified for public.person_927913da_1c37_48b8_9d88_cec5c1881aec
begin;
lock table public.person_927913da_1c37_48b8_9d88_cec5c1881aec;
create table public.person_927913da_1c37_48b8_9d88_cec5c1881aec_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode raw 
,"last_fc_update" timestamp    encode raw 
,"custom_traits" varchar(4096)   encode raw 
,"email_address" varchar(64)   encode raw 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode raw 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode raw 
,"prefer_language" varchar(16)   encode raw 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode raw 
,"first_seen" timestamp    encode raw 
,"first_location" varchar(2048)   encode raw 
,"first_location_host" varchar(256)   encode raw 
,"first_location_path" varchar(1024)   encode raw 
,"first_location_query" varchar(1024)   encode raw 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode raw 
,"first_referrer_host" varchar(256)   encode raw 
,"first_referrer_path" varchar(1024)   encode raw 
,"first_referrer_query" varchar(1024)   encode raw 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode raw 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode raw 
,"last_ip_address" varchar(64)   encode raw 
,"last_geo_ip_country" varchar(64)   encode raw 
,"last_geo_ip_city" varchar(64)   encode raw 
,"last_geo_ip_region" varchar(64)   encode raw 
,"last_geo_ip_postal" varchar(10)   encode raw 
,"last_geo_ip_longitude" numeric(7,4)   encode raw 
,"last_geo_ip_latitude" numeric(7,4)   encode raw 
,"last_session_id" varchar(24)   encode raw 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode raw 
,"orders_total" numeric(10,2)   encode raw 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(10,2)   encode raw 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode raw 
,"last_operating_system" varchar(64)   encode raw 
,"last_device_type" varchar(64)   encode raw 
,"last_browser" varchar(64)   encode raw 
,"last_browser_major" varchar(64)   encode raw 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_927913da_1c37_48b8_9d88_cec5c1881aec_$mig  select * from public.person_927913da_1c37_48b8_9d88_cec5c1881aec;
analyze public.person_927913da_1c37_48b8_9d88_cec5c1881aec_$mig;
drop table public.person_927913da_1c37_48b8_9d88_cec5c1881aec cascade;
alter table public.person_927913da_1c37_48b8_9d88_cec5c1881aec_$mig rename to person_927913da_1c37_48b8_9d88_cec5c1881aec;
commit;
-- [3550] Analyzing Table 'person_b0f77b3f_f977_4dea_ba1b_c3e307253daa'
-- [3549] Column Encoding will be modified for public.person_fd9b03b4_9a19_4046_a8eb_f75f08830d07
begin;
lock table public.person_fd9b03b4_9a19_4046_a8eb_f75f08830d07;
create table public.person_fd9b03b4_9a19_4046_a8eb_f75f08830d07_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode raw 
,"last_fc_update" timestamp    encode raw 
,"custom_traits" varchar(4096)   encode raw 
,"email_address" varchar(64)   encode raw 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode raw 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode lzo 
,"prefer_language" varchar(16)   encode raw 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode raw 
,"first_seen" timestamp    encode raw 
,"first_location" varchar(2048)   encode lzo 
,"first_location_host" varchar(256)   encode lzo 
,"first_location_path" varchar(1024)   encode lzo 
,"first_location_query" varchar(1024)   encode raw 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode lzo 
,"first_referrer_host" varchar(256)   encode lzo 
,"first_referrer_path" varchar(1024)   encode raw 
,"first_referrer_query" varchar(1024)   encode lzo 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode raw 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode raw 
,"last_ip_address" varchar(64)   encode lzo 
,"last_geo_ip_country" varchar(64)   encode text255 
,"last_geo_ip_city" varchar(64)   encode raw 
,"last_geo_ip_region" varchar(64)   encode raw 
,"last_geo_ip_postal" varchar(10)   encode raw 
,"last_geo_ip_longitude" numeric(7,4)   encode raw 
,"last_geo_ip_latitude" numeric(7,4)   encode raw 
,"last_session_id" varchar(24)   encode lzo 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode raw 
,"orders_total" numeric(7,2)   encode raw 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(7,2)   encode raw 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode lzo 
,"last_device_type" varchar(64)   encode raw 
,"last_browser" varchar(64)   encode lzo 
,"last_browser_major" varchar(64)   encode raw 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_fd9b03b4_9a19_4046_a8eb_f75f08830d07_$mig  select * from public.person_fd9b03b4_9a19_4046_a8eb_f75f08830d07;
analyze public.person_fd9b03b4_9a19_4046_a8eb_f75f08830d07_$mig;
drop table public.person_fd9b03b4_9a19_4046_a8eb_f75f08830d07 cascade;
alter table public.person_fd9b03b4_9a19_4046_a8eb_f75f08830d07_$mig rename to person_fd9b03b4_9a19_4046_a8eb_f75f08830d07;
commit;
-- [3549] Analyzing Table 'person_4070ba14_f081_41cb_9ef7_9dd385934da7'
-- [3549] Column Encoding will be modified for public.person_4070ba14_f081_41cb_9ef7_9dd385934da7
begin;
lock table public.person_4070ba14_f081_41cb_9ef7_9dd385934da7;
create table public.person_4070ba14_f081_41cb_9ef7_9dd385934da7_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode raw 
,"last_fc_update" timestamp    encode raw 
,"custom_traits" varchar(4096)   encode raw 
,"email_address" varchar(64)   encode raw 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode raw 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode raw 
,"prefer_language" varchar(16)   encode raw 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode raw 
,"first_seen" timestamp    encode raw 
,"first_location" varchar(2048)   encode lzo 
,"first_location_host" varchar(256)   encode raw 
,"first_location_path" varchar(1024)   encode raw 
,"first_location_query" varchar(1024)   encode raw 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode raw 
,"first_referrer_host" varchar(256)   encode raw 
,"first_referrer_path" varchar(1024)   encode raw 
,"first_referrer_query" varchar(1024)   encode raw 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode raw 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode raw 
,"last_ip_address" varchar(64)   encode raw 
,"last_geo_ip_country" varchar(64)   encode raw 
,"last_geo_ip_city" varchar(64)   encode raw 
,"last_geo_ip_region" varchar(64)   encode raw 
,"last_geo_ip_postal" varchar(10)   encode raw 
,"last_geo_ip_longitude" numeric(7,4)   encode raw 
,"last_geo_ip_latitude" numeric(7,4)   encode raw 
,"last_session_id" varchar(24)   encode raw 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode raw 
,"orders_total" numeric(7,2)   encode raw 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(7,2)   encode raw 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode raw 
,"last_device_type" varchar(64)   encode raw 
,"last_browser" varchar(64)   encode raw 
,"last_browser_major" varchar(64)   encode raw 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_4070ba14_f081_41cb_9ef7_9dd385934da7_$mig  select * from public.person_4070ba14_f081_41cb_9ef7_9dd385934da7;
analyze public.person_4070ba14_f081_41cb_9ef7_9dd385934da7_$mig;
drop table public.person_4070ba14_f081_41cb_9ef7_9dd385934da7 cascade;
alter table public.person_4070ba14_f081_41cb_9ef7_9dd385934da7_$mig rename to person_4070ba14_f081_41cb_9ef7_9dd385934da7;
commit;
-- [3549] Analyzing Table 'person_d579cc60_b5da_4472_96a8_e1f60fe440e1'
-- [3549] Column Encoding will be modified for public.person_d579cc60_b5da_4472_96a8_e1f60fe440e1
begin;
lock table public.person_d579cc60_b5da_4472_96a8_e1f60fe440e1;
create table public.person_d579cc60_b5da_4472_96a8_e1f60fe440e1_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode raw 
,"last_fc_update" timestamp    encode lzo 
,"custom_traits" varchar(4096)   encode lzo 
,"email_address" varchar(64)   encode raw 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode lzo 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode lzo 
,"prefer_language" varchar(16)   encode bytedict 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode lzo 
,"first_seen" timestamp    encode lzo 
,"first_location" varchar(2048)   encode lzo 
,"first_location_host" varchar(256)   encode lzo 
,"first_location_path" varchar(1024)   encode lzo 
,"first_location_query" varchar(1024)   encode lzo 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode lzo 
,"first_referrer_host" varchar(256)   encode lzo 
,"first_referrer_path" varchar(1024)   encode lzo 
,"first_referrer_query" varchar(1024)   encode lzo 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode raw 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode lzo 
,"last_ip_address" varchar(64)   encode lzo 
,"last_geo_ip_country" varchar(64)   encode text255 
,"last_geo_ip_city" varchar(64)   encode lzo 
,"last_geo_ip_region" varchar(64)   encode text255 
,"last_geo_ip_postal" varchar(10)   encode lzo 
,"last_geo_ip_longitude" numeric(7,4)   encode lzo 
,"last_geo_ip_latitude" numeric(7,4)   encode lzo 
,"last_session_id" varchar(24)   encode lzo 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode lzo 
,"orders_total" numeric(7,2)   encode lzo 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(7,2)   encode lzo 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode lzo 
,"last_device_type" varchar(64)   encode lzo 
,"last_browser" varchar(64)   encode lzo 
,"last_browser_major" varchar(64)   encode lzo 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_d579cc60_b5da_4472_96a8_e1f60fe440e1_$mig  select * from public.person_d579cc60_b5da_4472_96a8_e1f60fe440e1;
analyze public.person_d579cc60_b5da_4472_96a8_e1f60fe440e1_$mig;
drop table public.person_d579cc60_b5da_4472_96a8_e1f60fe440e1 cascade;
alter table public.person_d579cc60_b5da_4472_96a8_e1f60fe440e1_$mig rename to person_d579cc60_b5da_4472_96a8_e1f60fe440e1;
commit;
-- [3549] Analyzing Table 'person_2f28b2dd_cfa9_40bb_89ed_25482f835838'
-- [3549] Column Encoding will be modified for public.person_2f28b2dd_cfa9_40bb_89ed_25482f835838
begin;
lock table public.person_2f28b2dd_cfa9_40bb_89ed_25482f835838;
create table public.person_2f28b2dd_cfa9_40bb_89ed_25482f835838_$mig(
"person_id" character(24)   encode lzo 
,"user_id" varchar(64)   encode lzo 
,"last_fc_update" timestamp    encode lzo 
,"custom_traits" varchar(4096)   encode lzo 
,"email_address" varchar(64)   encode lzo 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode lzo 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode lzo 
,"prefer_language" varchar(16)   encode lzo 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode lzo 
,"first_seen" timestamp    encode lzo 
,"first_location" varchar(2048)   encode lzo 
,"first_location_host" varchar(256)   encode lzo 
,"first_location_path" varchar(1024)   encode lzo 
,"first_location_query" varchar(1024)   encode lzo 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode lzo 
,"first_referrer_host" varchar(256)   encode lzo 
,"first_referrer_path" varchar(1024)   encode lzo 
,"first_referrer_query" varchar(1024)   encode lzo 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode bytedict 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode lzo 
,"first_utm_source" varchar(32)   encode lzo 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode RAW 
,"last_ip_address" varchar(64)   encode lzo 
,"last_geo_ip_country" varchar(64)   encode lzo 
,"last_geo_ip_city" varchar(64)   encode lzo 
,"last_geo_ip_region" varchar(64)   encode text255 
,"last_geo_ip_postal" varchar(10)   encode lzo 
,"last_geo_ip_longitude" numeric(7,4)   encode lzo 
,"last_geo_ip_latitude" numeric(7,4)   encode lzo 
,"last_session_id" varchar(24)   encode lzo 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode lzo 
,"orders_total" numeric(7,2)   encode lzo 
,"last_order_time" timestamp    encode lzo 
,"last_order_total" numeric(7,2)   encode lzo 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode lzo 
,"last_device_type" varchar(64)   encode lzo 
,"last_browser" varchar(64)   encode lzo 
,"last_browser_major" varchar(64)   encode lzo 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(last_seen,person_id)
 ;
insert into public.person_2f28b2dd_cfa9_40bb_89ed_25482f835838_$mig  select * from public.person_2f28b2dd_cfa9_40bb_89ed_25482f835838;
analyze public.person_2f28b2dd_cfa9_40bb_89ed_25482f835838_$mig;
drop table public.person_2f28b2dd_cfa9_40bb_89ed_25482f835838 cascade;
alter table public.person_2f28b2dd_cfa9_40bb_89ed_25482f835838_$mig rename to person_2f28b2dd_cfa9_40bb_89ed_25482f835838;
commit;
-- [3549] Analyzing Table 'person_87c63675_1a3f_4823_a55e_76f73cd078f1'
-- [3549] Column Encoding will be modified for public.person_87c63675_1a3f_4823_a55e_76f73cd078f1
begin;
lock table public.person_87c63675_1a3f_4823_a55e_76f73cd078f1;
create table public.person_87c63675_1a3f_4823_a55e_76f73cd078f1_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode raw 
,"last_fc_update" timestamp    encode lzo 
,"custom_traits" varchar(4096)   encode lzo 
,"email_address" varchar(64)   encode raw 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode lzo 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode lzo 
,"prefer_language" varchar(16)   encode bytedict 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode lzo 
,"first_seen" timestamp    encode lzo 
,"first_location" varchar(2048)   encode lzo 
,"first_location_host" varchar(256)   encode lzo 
,"first_location_path" varchar(1024)   encode lzo 
,"first_location_query" varchar(1024)   encode lzo 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode lzo 
,"first_referrer_host" varchar(256)   encode lzo 
,"first_referrer_path" varchar(1024)   encode lzo 
,"first_referrer_query" varchar(1024)   encode lzo 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode raw 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode lzo 
,"first_utm_source" varchar(32)   encode bytedict 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode lzo 
,"last_ip_address" varchar(64)   encode lzo 
,"last_geo_ip_country" varchar(64)   encode lzo 
,"last_geo_ip_city" varchar(64)   encode lzo 
,"last_geo_ip_region" varchar(64)   encode lzo 
,"last_geo_ip_postal" varchar(10)   encode lzo 
,"last_geo_ip_longitude" numeric(7,4)   encode lzo 
,"last_geo_ip_latitude" numeric(7,4)   encode lzo 
,"last_session_id" varchar(24)   encode lzo 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode lzo 
,"orders_total" numeric(7,2)   encode lzo 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(7,2)   encode lzo 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode lzo 
,"last_device_type" varchar(64)   encode lzo 
,"last_browser" varchar(64)   encode lzo 
,"last_browser_major" varchar(64)   encode lzo 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_87c63675_1a3f_4823_a55e_76f73cd078f1_$mig  select * from public.person_87c63675_1a3f_4823_a55e_76f73cd078f1;
analyze public.person_87c63675_1a3f_4823_a55e_76f73cd078f1_$mig;
drop table public.person_87c63675_1a3f_4823_a55e_76f73cd078f1 cascade;
alter table public.person_87c63675_1a3f_4823_a55e_76f73cd078f1_$mig rename to person_87c63675_1a3f_4823_a55e_76f73cd078f1;
commit;
-- [3549] Analyzing Table 'person_fbc669c0_3cce_4322_83a6_8b80da7ed545'
-- [3549] Column Encoding will be modified for public.person_fbc669c0_3cce_4322_83a6_8b80da7ed545
begin;
lock table public.person_fbc669c0_3cce_4322_83a6_8b80da7ed545;
create table public.person_fbc669c0_3cce_4322_83a6_8b80da7ed545_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode raw 
,"last_fc_update" timestamp    encode lzo 
,"custom_traits" varchar(4096)   encode lzo 
,"email_address" varchar(64)   encode raw 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode lzo 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode lzo 
,"prefer_language" varchar(16)   encode bytedict 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode lzo 
,"first_seen" timestamp    encode lzo 
,"first_location" varchar(2048)   encode lzo 
,"first_location_host" varchar(256)   encode lzo 
,"first_location_path" varchar(1024)   encode lzo 
,"first_location_query" varchar(1024)   encode lzo 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode lzo 
,"first_referrer_host" varchar(256)   encode lzo 
,"first_referrer_path" varchar(1024)   encode lzo 
,"first_referrer_query" varchar(1024)   encode lzo 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode lzo 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode lzo 
,"last_ip_address" varchar(64)   encode lzo 
,"last_geo_ip_country" varchar(64)   encode lzo 
,"last_geo_ip_city" varchar(64)   encode text255 
,"last_geo_ip_region" varchar(64)   encode text255 
,"last_geo_ip_postal" varchar(10)   encode lzo 
,"last_geo_ip_longitude" numeric(7,4)   encode lzo 
,"last_geo_ip_latitude" numeric(7,4)   encode lzo 
,"last_session_id" varchar(24)   encode lzo 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode lzo 
,"orders_total" numeric(7,2)   encode lzo 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(7,2)   encode lzo 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode lzo 
,"last_device_type" varchar(64)   encode lzo 
,"last_browser" varchar(64)   encode lzo 
,"last_browser_major" varchar(64)   encode lzo 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode lzo 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_fbc669c0_3cce_4322_83a6_8b80da7ed545_$mig  select * from public.person_fbc669c0_3cce_4322_83a6_8b80da7ed545;
analyze public.person_fbc669c0_3cce_4322_83a6_8b80da7ed545_$mig;
drop table public.person_fbc669c0_3cce_4322_83a6_8b80da7ed545 cascade;
alter table public.person_fbc669c0_3cce_4322_83a6_8b80da7ed545_$mig rename to person_fbc669c0_3cce_4322_83a6_8b80da7ed545;
commit;
-- [3549] Analyzing Table 'person_ace8b421_634f_4060_9118_ffc36db704dc'
-- [3549] Column Encoding will be modified for public.person_ace8b421_634f_4060_9118_ffc36db704dc
begin;
lock table public.person_ace8b421_634f_4060_9118_ffc36db704dc;
create table public.person_ace8b421_634f_4060_9118_ffc36db704dc_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode lzo 
,"last_fc_update" timestamp    encode lzo 
,"custom_traits" varchar(4096)   encode lzo 
,"email_address" varchar(64)   encode lzo 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode lzo 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode lzo 
,"prefer_language" varchar(16)   encode bytedict 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
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
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode raw 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode lzo 
,"last_ip_address" varchar(64)   encode lzo 
,"last_geo_ip_country" varchar(64)   encode lzo 
,"last_geo_ip_city" varchar(64)   encode text255 
,"last_geo_ip_region" varchar(64)   encode text255 
,"last_geo_ip_postal" varchar(10)   encode lzo 
,"last_geo_ip_longitude" numeric(7,4)   encode lzo 
,"last_geo_ip_latitude" numeric(7,4)   encode lzo 
,"last_session_id" varchar(24)   encode lzo 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode lzo 
,"orders_total" numeric(7,2)   encode lzo 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(7,2)   encode lzo 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode lzo 
,"last_device_type" varchar(64)   encode lzo 
,"last_browser" varchar(64)   encode lzo 
,"last_browser_major" varchar(64)   encode lzo 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode lzo 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_ace8b421_634f_4060_9118_ffc36db704dc_$mig  select * from public.person_ace8b421_634f_4060_9118_ffc36db704dc;
analyze public.person_ace8b421_634f_4060_9118_ffc36db704dc_$mig;
drop table public.person_ace8b421_634f_4060_9118_ffc36db704dc cascade;
alter table public.person_ace8b421_634f_4060_9118_ffc36db704dc_$mig rename to person_ace8b421_634f_4060_9118_ffc36db704dc;
commit;
-- [3549] Analyzing Table 'person_48221d93_a776_4424_8a27_d73784160b3b'
-- [3549] Column Encoding will be modified for public.person_48221d93_a776_4424_8a27_d73784160b3b
begin;
lock table public.person_48221d93_a776_4424_8a27_d73784160b3b;
create table public.person_48221d93_a776_4424_8a27_d73784160b3b_$mig(
"person_id" character(24)   encode lzo 
,"user_id" varchar(64)   encode lzo 
,"last_fc_update" timestamp    encode lzo 
,"custom_traits" varchar(4096)   encode lzo 
,"email_address" varchar(64)   encode lzo 
,"first_name" varchar(64)   encode lzo 
,"last_name" varchar(64)   encode lzo 
,"full_name" varchar(64)   encode lzo 
,"age" integer   encode lzo 
,"age_range" varchar(16)   encode lzo 
,"gender" varchar(8)   encode lzo 
,"company" varchar(128)   encode lzo 
,"title" varchar(128)   encode lzo 
,"country" varchar(64)   encode lzo 
,"city" varchar(64)   encode lzo 
,"region" varchar(64)   encode lzo 
,"postal" varchar(10)   encode lzo 
,"address" varchar(128)   encode lzo 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
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
,"first_utm_medium" varchar(32)   encode lzo 
,"first_utm_source" varchar(32)   encode lzo 
,"first_utm_term" varchar(32)   encode lzo 
,"last_seen" timestamp    encode RAW 
,"last_ip_address" varchar(64)   encode lzo 
,"last_geo_ip_country" varchar(64)   encode lzo 
,"last_geo_ip_city" varchar(64)   encode text255 
,"last_geo_ip_region" varchar(64)   encode text255 
,"last_geo_ip_postal" varchar(10)   encode lzo 
,"last_geo_ip_longitude" numeric(7,4)   encode lzo 
,"last_geo_ip_latitude" numeric(7,4)   encode lzo 
,"last_session_id" varchar(24)   encode lzo 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode lzo 
,"orders_placed" integer   encode lzo 
,"orders_total" numeric(7,2)   encode lzo 
,"last_order_time" timestamp    encode lzo 
,"last_order_total" numeric(7,2)   encode lzo 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode lzo 
,"last_device_type" varchar(64)   encode lzo 
,"last_browser" varchar(64)   encode lzo 
,"last_browser_major" varchar(64)   encode lzo 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode lzo 
)
 INTERLEAVED SORTKEY(last_seen,person_id)
 ;
insert into public.person_48221d93_a776_4424_8a27_d73784160b3b_$mig  select * from public.person_48221d93_a776_4424_8a27_d73784160b3b;
analyze public.person_48221d93_a776_4424_8a27_d73784160b3b_$mig;
drop table public.person_48221d93_a776_4424_8a27_d73784160b3b cascade;
alter table public.person_48221d93_a776_4424_8a27_d73784160b3b_$mig rename to person_48221d93_a776_4424_8a27_d73784160b3b;
commit;
-- [3549] Analyzing Table 'person_9ee3ab17_d1e9_414c_928f_7aa962f30e53'
-- [3550] Column Encoding will be modified for public.person_b0f77b3f_f977_4dea_ba1b_c3e307253daa
begin;
lock table public.person_b0f77b3f_f977_4dea_ba1b_c3e307253daa;
create table public.person_b0f77b3f_f977_4dea_ba1b_c3e307253daa_$mig(
"person_id" character(24)   encode RAW 
,"user_id" varchar(64)   encode raw 
,"last_fc_update" timestamp    encode raw 
,"custom_traits" varchar(4096)   encode raw 
,"email_address" varchar(64)   encode raw 
,"first_name" varchar(64)   encode raw 
,"last_name" varchar(64)   encode raw 
,"full_name" varchar(64)   encode raw 
,"age" integer   encode raw 
,"age_range" varchar(16)   encode raw 
,"gender" varchar(8)   encode raw 
,"company" varchar(128)   encode raw 
,"title" varchar(128)   encode raw 
,"country" varchar(64)   encode raw 
,"city" varchar(64)   encode raw 
,"region" varchar(64)   encode raw 
,"postal" varchar(10)   encode raw 
,"address" varchar(128)   encode raw 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
,"avatar" varchar(1024)   encode raw 
,"accept_language" varchar(64)   encode raw 
,"prefer_language" varchar(16)   encode raw 
,"facebook_id" varchar(64)   encode raw 
,"facebook_username" varchar(64)   encode raw 
,"facebook_url" varchar(256)   encode raw 
,"linked_in_id" varchar(64)   encode raw 
,"linked_in_username" varchar(64)   encode raw 
,"linked_in_url" varchar(256)   encode raw 
,"linked_in_bio" varchar(256)   encode raw 
,"twitter_username" varchar(32)   encode raw 
,"twitter_followers" integer   encode raw 
,"first_seen" timestamp    encode raw 
,"first_location" varchar(2048)   encode lzo 
,"first_location_host" varchar(256)   encode lzo 
,"first_location_path" varchar(1024)   encode lzo 
,"first_location_query" varchar(1024)   encode lzo 
,"first_location_fragment" varchar(1024)   encode raw 
,"first_referrer" varchar(2048)   encode lzo 
,"first_referrer_host" varchar(256)   encode lzo 
,"first_referrer_path" varchar(1024)   encode raw 
,"first_referrer_query" varchar(1024)   encode lzo 
,"first_referrer_fragment" varchar(1024)   encode raw 
,"first_utm_campaign" varchar(32)   encode lzo 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode raw 
,"last_ip_address" varchar(64)   encode lzo 
,"last_geo_ip_country" varchar(64)   encode lzo 
,"last_geo_ip_city" varchar(64)   encode raw 
,"last_geo_ip_region" varchar(64)   encode raw 
,"last_geo_ip_postal" varchar(10)   encode raw 
,"last_geo_ip_longitude" numeric(7,4)   encode raw 
,"last_geo_ip_latitude" numeric(7,4)   encode raw 
,"last_session_id" varchar(24)   encode lzo 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode raw 
,"orders_placed" integer   encode raw 
,"orders_total" numeric(7,2)   encode raw 
,"last_order_time" timestamp    encode raw 
,"last_order_total" numeric(7,2)   encode raw 
,"multi_device" boolean   encode raw 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode raw 
,"last_device_type" varchar(64)   encode raw 
,"last_browser" varchar(64)   encode raw 
,"last_browser_major" varchar(64)   encode raw 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,last_seen)
 ;
insert into public.person_b0f77b3f_f977_4dea_ba1b_c3e307253daa_$mig  select * from public.person_b0f77b3f_f977_4dea_ba1b_c3e307253daa;
analyze public.person_b0f77b3f_f977_4dea_ba1b_c3e307253daa_$mig;
drop table public.person_b0f77b3f_f977_4dea_ba1b_c3e307253daa cascade;
alter table public.person_b0f77b3f_f977_4dea_ba1b_c3e307253daa_$mig rename to person_b0f77b3f_f977_4dea_ba1b_c3e307253daa;
commit;
-- [3550] Analyzing Table 'person_00774067_e74b_48de_ba3e_a4751e5fbd25'
-- [3550] No encoding modifications required for public.person_00774067_e74b_48de_ba3e_a4751e5fbd25
-- [3549] Column Encoding will be modified for public.person_9ee3ab17_d1e9_414c_928f_7aa962f30e53
begin;
lock table public.person_9ee3ab17_d1e9_414c_928f_7aa962f30e53;
create table public.person_9ee3ab17_d1e9_414c_928f_7aa962f30e53_$mig(
"person_id" character(24)   encode lzo 
,"user_id" varchar(64)   encode lzo 
,"last_fc_update" timestamp    encode lzo 
,"custom_traits" varchar(4096)   encode lzo 
,"email_address" varchar(64)   encode lzo 
,"first_name" varchar(64)   encode lzo 
,"last_name" varchar(64)   encode lzo 
,"full_name" varchar(64)   encode lzo 
,"age" integer   encode lzo 
,"age_range" varchar(16)   encode lzo 
,"gender" varchar(8)   encode lzo 
,"company" varchar(128)   encode lzo 
,"title" varchar(128)   encode lzo 
,"country" varchar(64)   encode lzo 
,"city" varchar(64)   encode lzo 
,"region" varchar(64)   encode lzo 
,"postal" varchar(10)   encode lzo 
,"address" varchar(128)   encode lzo 
,"longitude" numeric(7,4)   encode raw 
,"latitude" numeric(7,4)   encode raw 
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
,"first_utm_medium" varchar(32)   encode lzo 
,"first_utm_source" varchar(32)   encode bytedict 
,"first_utm_term" varchar(32)   encode lzo 
,"last_seen" timestamp    encode RAW 
,"last_ip_address" varchar(64)   encode lzo 
,"last_geo_ip_country" varchar(64)   encode lzo 
,"last_geo_ip_city" varchar(64)   encode text32K 
,"last_geo_ip_region" varchar(64)   encode lzo 
,"last_geo_ip_postal" varchar(10)   encode lzo 
,"last_geo_ip_longitude" numeric(7,4)   encode lzo 
,"last_geo_ip_latitude" numeric(7,4)   encode lzo 
,"last_session_id" varchar(24)   encode lzo 
,"row_concat" varchar(4096)   encode lzo 
,"date_of_birth" timestamp    encode raw 
,"phone" varchar(32)   encode lzo 
,"orders_placed" integer   encode lzo 
,"orders_total" numeric(7,2)   encode lzo 
,"last_order_time" timestamp    encode lzo 
,"last_order_total" numeric(7,2)   encode lzo 
,"multi_device" boolean   encode runlength 
,"last_user_agent" varchar(256)   encode lzo 
,"last_operating_system" varchar(64)   encode lzo 
,"last_device_type" varchar(64)   encode lzo 
,"last_browser" varchar(64)   encode lzo 
,"last_browser_major" varchar(64)   encode lzo 
,"first_order_time" timestamp    encode raw 
,"first_order_total" numeric(10,2)   encode lzo 
)
 INTERLEAVED SORTKEY(last_seen,person_id)
 ;
insert into public.person_9ee3ab17_d1e9_414c_928f_7aa962f30e53_$mig  select * from public.person_9ee3ab17_d1e9_414c_928f_7aa962f30e53;
analyze public.person_9ee3ab17_d1e9_414c_928f_7aa962f30e53_$mig;
drop table public.person_9ee3ab17_d1e9_414c_928f_7aa962f30e53 cascade;
alter table public.person_9ee3ab17_d1e9_414c_928f_7aa962f30e53_$mig rename to person_9ee3ab17_d1e9_414c_928f_7aa962f30e53;
commit;
vacuum delete only;
-- [3545] Processing Complete
