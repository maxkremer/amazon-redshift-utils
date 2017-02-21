-- [15761] Connected to tfclickstream.civjv74w6cxl.us-west-2.redshift.amazonaws.com:5439:clickstream as tfdev
-- [15761] Analyzing Schema 'public' for Columnar Encoding Optimisations with 2 Threads...
-- [15761] Extracting Candidate Table List...
-- [15761] Analyzing 43 table(s)
-- [15768] Analyzing Table 'session_67a0a6e9_aee5_4e0c_a4d6_0f7648da7b0c'
-- [15769] Analyzing Table 'session_6f40428d_6a31_4c26_af3b_cac29f98f442'
-- [15768] No encoding modifications required for public.session_67a0a6e9_aee5_4e0c_a4d6_0f7648da7b0c
-- [15768] Analyzing Table 'session_64ddd2fc_800e_418e_943a_23932f31d82e'
-- [15769] No encoding modifications required for public.session_6f40428d_6a31_4c26_af3b_cac29f98f442
-- [15769] Analyzing Table 'session_f4aec5c0_f218_4765_888a_0d483ce95a55'
-- [15768] No encoding modifications required for public.session_64ddd2fc_800e_418e_943a_23932f31d82e
-- [15768] Analyzing Table 'session_c5e74c42_3923_4032_9fe8_b9f5dc21d5c9'
-- [15769] No encoding modifications required for public.session_f4aec5c0_f218_4765_888a_0d483ce95a55
-- [15769] Analyzing Table 'session_33b5fc33_b1c1_4bc6_9286_6f609bd08cf5'
-- [15768] No encoding modifications required for public.session_c5e74c42_3923_4032_9fe8_b9f5dc21d5c9
-- [15768] Analyzing Table 'session_5c60a6d5_4f86_462d_aed1_2c9521f1d6a4'
-- [15769] No encoding modifications required for public.session_33b5fc33_b1c1_4bc6_9286_6f609bd08cf5
-- [15769] Analyzing Table 'session_1c4d2436_d118_40f6_934c_5259b3a0c167'
-- [15768] No encoding modifications required for public.session_5c60a6d5_4f86_462d_aed1_2c9521f1d6a4
-- [15768] Analyzing Table 'session_03cad598_20d9_48e7_9f6c_82f603315d33'
-- [15769] No encoding modifications required for public.session_1c4d2436_d118_40f6_934c_5259b3a0c167
-- [15769] Analyzing Table 'session_75040935_823d_4158_b990_056e8d493b78'
-- [15768] No encoding modifications required for public.session_03cad598_20d9_48e7_9f6c_82f603315d33
-- [15768] Analyzing Table 'session_64f41191_8606_4170_a663_d35149f8299f'
-- [15769] No encoding modifications required for public.session_75040935_823d_4158_b990_056e8d493b78
-- [15769] Analyzing Table 'session_1bda7836_aaa0_465e_9057_66aa5067c397'
-- [15768] No encoding modifications required for public.session_64f41191_8606_4170_a663_d35149f8299f
-- [15768] Analyzing Table 'session_ded5d6b4_7581_4f4a_bdd0_5b15ad719603'
-- [15769] No encoding modifications required for public.session_1bda7836_aaa0_465e_9057_66aa5067c397
-- [15769] Analyzing Table 'session_4070ba14_f081_41cb_9ef7_9dd385934da7'
-- [15768] No encoding modifications required for public.session_ded5d6b4_7581_4f4a_bdd0_5b15ad719603
-- [15768] Analyzing Table 'session_5c1b3b5a_32fe_4166_a839_599ebcecab10'
-- [15769] Column Encoding will be modified for public.session_4070ba14_f081_41cb_9ef7_9dd385934da7
begin;
lock table public.session_4070ba14_f081_41cb_9ef7_9dd385934da7;
create table public.session_4070ba14_f081_41cb_9ef7_9dd385934da7_$mig(
"person_id" character(24)   encode RAW 
,"session_id" varchar(24)   encode raw 
,"first_seen" timestamp    encode raw 
,"first_ip_address" varchar(64)   encode raw 
,"first_geo_ip_country" varchar(64)   encode raw 
,"first_geo_ip_city" varchar(64)   encode raw 
,"first_geo_ip_region" varchar(64)   encode raw 
,"first_geo_ip_postal" varchar(10)   encode raw 
,"first_geo_ip_longitude" numeric(7,4)   encode raw 
,"first_geo_ip_latitude" numeric(7,4)   encode raw 
,"first_user_agent" varchar(256)   encode lzo 
,"first_operating_system" varchar(64)   encode raw 
,"first_device_type" varchar(64)   encode raw 
,"first_browser" varchar(64)   encode raw 
,"first_browser_major" varchar(64)   encode raw 
,"first_location" varchar(2048)   encode lzo 
,"first_location_host" varchar(256)   encode raw 
,"first_location_path" varchar(1024)   encode raw 
,"first_location_query" varchar(1024)   encode lzo 
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
,"last_location" varchar(2048)   encode lzo 
,"last_location_host" varchar(256)   encode raw 
,"last_location_path" varchar(1024)   encode raw 
,"last_location_query" varchar(1024)   encode lzo 
,"last_location_fragment" varchar(1024)   encode raw 
,"click_count" integer   encode raw 
,"input_count" integer   encode raw 
,"view_count" integer   encode raw 
,"watch_count" integer   encode raw 
,"track_count" integer   encode raw 
,"ecommerce_count" integer   encode raw 
,"page_count" integer   encode raw 
,"orders_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,session_id,first_seen)
 ;
insert into public.session_4070ba14_f081_41cb_9ef7_9dd385934da7_$mig  select * from public.session_4070ba14_f081_41cb_9ef7_9dd385934da7;
analyze public.session_4070ba14_f081_41cb_9ef7_9dd385934da7_$mig;
drop table public.session_4070ba14_f081_41cb_9ef7_9dd385934da7 cascade;
alter table public.session_4070ba14_f081_41cb_9ef7_9dd385934da7_$mig rename to session_4070ba14_f081_41cb_9ef7_9dd385934da7;
commit;
-- [15769] Analyzing Table 'session_986b50f2_4499_4ce4_a577_a1b00d4909a0'
-- [15768] No encoding modifications required for public.session_5c1b3b5a_32fe_4166_a839_599ebcecab10
-- [15768] Analyzing Table 'session_baa1737b_948a_47c0_a276_045599390817'
-- [15769] No encoding modifications required for public.session_986b50f2_4499_4ce4_a577_a1b00d4909a0
-- [15769] Analyzing Table 'session_e1dbcd31_d33c_413d_a483_113b5f8ca0da'
-- [15768] Column Encoding will be modified for public.session_baa1737b_948a_47c0_a276_045599390817
begin;
lock table public.session_baa1737b_948a_47c0_a276_045599390817;
create table public.session_baa1737b_948a_47c0_a276_045599390817_$mig(
"person_id" character(24)   encode RAW 
,"session_id" varchar(24)   encode lzo 
,"first_seen" timestamp    encode raw 
,"first_ip_address" varchar(64)   encode raw 
,"first_geo_ip_country" varchar(64)   encode raw 
,"first_geo_ip_city" varchar(64)   encode raw 
,"first_geo_ip_region" varchar(64)   encode raw 
,"first_geo_ip_postal" varchar(10)   encode raw 
,"first_geo_ip_longitude" numeric(7,4)   encode raw 
,"first_geo_ip_latitude" numeric(7,4)   encode raw 
,"first_user_agent" varchar(256)   encode lzo 
,"first_operating_system" varchar(64)   encode raw 
,"first_device_type" varchar(64)   encode raw 
,"first_browser" varchar(64)   encode raw 
,"first_browser_major" varchar(64)   encode raw 
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
,"last_location" varchar(2048)   encode lzo 
,"last_location_host" varchar(256)   encode raw 
,"last_location_path" varchar(1024)   encode lzo 
,"last_location_query" varchar(1024)   encode raw 
,"last_location_fragment" varchar(1024)   encode raw 
,"click_count" integer   encode raw 
,"input_count" integer   encode raw 
,"view_count" integer   encode raw 
,"watch_count" integer   encode raw 
,"track_count" integer   encode raw 
,"ecommerce_count" integer   encode raw 
,"page_count" integer   encode raw 
,"orders_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,session_id,first_seen)
 ;
insert into public.session_baa1737b_948a_47c0_a276_045599390817_$mig  select * from public.session_baa1737b_948a_47c0_a276_045599390817;
analyze public.session_baa1737b_948a_47c0_a276_045599390817_$mig;
drop table public.session_baa1737b_948a_47c0_a276_045599390817 cascade;
alter table public.session_baa1737b_948a_47c0_a276_045599390817_$mig rename to session_baa1737b_948a_47c0_a276_045599390817;
commit;
-- [15768] Analyzing Table 'session_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830'
-- [15769] No encoding modifications required for public.session_e1dbcd31_d33c_413d_a483_113b5f8ca0da
-- [15769] Analyzing Table 'session_b0f77b3f_f977_4dea_ba1b_c3e307253daa'
-- [15768] Column Encoding will be modified for public.session_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830
begin;
lock table public.session_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830;
create table public.session_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830_$mig(
"person_id" character(24)   encode RAW 
,"session_id" varchar(24)   encode lzo 
,"first_seen" timestamp    encode lzo 
,"first_ip_address" varchar(64)   encode lzo 
,"first_geo_ip_country" varchar(64)   encode lzo 
,"first_geo_ip_city" varchar(64)   encode lzo 
,"first_geo_ip_region" varchar(64)   encode text255 
,"first_geo_ip_postal" varchar(10)   encode raw 
,"first_geo_ip_longitude" numeric(7,4)   encode lzo 
,"first_geo_ip_latitude" numeric(7,4)   encode lzo 
,"first_user_agent" varchar(256)   encode lzo 
,"first_operating_system" varchar(64)   encode lzo 
,"first_device_type" varchar(64)   encode lzo 
,"first_browser" varchar(64)   encode lzo 
,"first_browser_major" varchar(64)   encode lzo 
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
,"last_location" varchar(2048)   encode lzo 
,"last_location_host" varchar(256)   encode lzo 
,"last_location_path" varchar(1024)   encode lzo 
,"last_location_query" varchar(1024)   encode lzo 
,"last_location_fragment" varchar(1024)   encode lzo 
,"click_count" integer   encode raw 
,"input_count" integer   encode raw 
,"view_count" integer   encode raw 
,"watch_count" integer   encode raw 
,"track_count" integer   encode raw 
,"ecommerce_count" integer   encode raw 
,"page_count" integer   encode raw 
,"orders_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,session_id,first_seen)
 ;
insert into public.session_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830_$mig  select * from public.session_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830;
analyze public.session_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830_$mig;
drop table public.session_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830 cascade;
alter table public.session_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830_$mig rename to session_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830;
commit;
-- [15768] Analyzing Table 'session_addb4a43_8e9f_43b2_a5b7_019f701d8161'
-- [15769] Column Encoding will be modified for public.session_b0f77b3f_f977_4dea_ba1b_c3e307253daa
begin;
lock table public.session_b0f77b3f_f977_4dea_ba1b_c3e307253daa;
create table public.session_b0f77b3f_f977_4dea_ba1b_c3e307253daa_$mig(
"person_id" character(24)   encode RAW 
,"session_id" varchar(24)   encode lzo 
,"first_seen" timestamp    encode raw 
,"first_ip_address" varchar(64)   encode lzo 
,"first_geo_ip_country" varchar(64)   encode lzo 
,"first_geo_ip_city" varchar(64)   encode raw 
,"first_geo_ip_region" varchar(64)   encode raw 
,"first_geo_ip_postal" varchar(10)   encode raw 
,"first_geo_ip_longitude" numeric(7,4)   encode raw 
,"first_geo_ip_latitude" numeric(7,4)   encode raw 
,"first_user_agent" varchar(256)   encode lzo 
,"first_operating_system" varchar(64)   encode lzo 
,"first_device_type" varchar(64)   encode raw 
,"first_browser" varchar(64)   encode raw 
,"first_browser_major" varchar(64)   encode raw 
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
,"first_utm_campaign" varchar(32)   encode bytedict 
,"first_utm_content" varchar(32)   encode raw 
,"first_utm_medium" varchar(32)   encode raw 
,"first_utm_source" varchar(32)   encode raw 
,"first_utm_term" varchar(32)   encode raw 
,"last_seen" timestamp    encode raw 
,"last_location" varchar(2048)   encode lzo 
,"last_location_host" varchar(256)   encode lzo 
,"last_location_path" varchar(1024)   encode lzo 
,"last_location_query" varchar(1024)   encode lzo 
,"last_location_fragment" varchar(1024)   encode raw 
,"click_count" integer   encode raw 
,"input_count" integer   encode raw 
,"view_count" integer   encode raw 
,"watch_count" integer   encode raw 
,"track_count" integer   encode raw 
,"ecommerce_count" integer   encode raw 
,"page_count" integer   encode raw 
,"orders_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,session_id,first_seen)
 ;
insert into public.session_b0f77b3f_f977_4dea_ba1b_c3e307253daa_$mig  select * from public.session_b0f77b3f_f977_4dea_ba1b_c3e307253daa;
analyze public.session_b0f77b3f_f977_4dea_ba1b_c3e307253daa_$mig;
drop table public.session_b0f77b3f_f977_4dea_ba1b_c3e307253daa cascade;
alter table public.session_b0f77b3f_f977_4dea_ba1b_c3e307253daa_$mig rename to session_b0f77b3f_f977_4dea_ba1b_c3e307253daa;
commit;
-- [15769] Analyzing Table 'session_0662b6d7_286e_4e35_a5e7_c667eb8c318f'
-- [15768] No encoding modifications required for public.session_addb4a43_8e9f_43b2_a5b7_019f701d8161
-- [15768] Analyzing Table 'session_927913da_1c37_48b8_9d88_cec5c1881aec'
-- [15769] Column Encoding will be modified for public.session_0662b6d7_286e_4e35_a5e7_c667eb8c318f
begin;
lock table public.session_0662b6d7_286e_4e35_a5e7_c667eb8c318f;
create table public.session_0662b6d7_286e_4e35_a5e7_c667eb8c318f_$mig(
"person_id" character(24)   encode RAW 
,"session_id" varchar(24)   encode raw 
,"first_seen" timestamp    encode raw 
,"first_ip_address" varchar(64)   encode raw 
,"first_geo_ip_country" varchar(64)   encode raw 
,"first_geo_ip_city" varchar(64)   encode raw 
,"first_geo_ip_region" varchar(64)   encode raw 
,"first_geo_ip_postal" varchar(10)   encode raw 
,"first_geo_ip_longitude" numeric(7,4)   encode raw 
,"first_geo_ip_latitude" numeric(7,4)   encode raw 
,"first_user_agent" varchar(256)   encode lzo 
,"first_operating_system" varchar(64)   encode raw 
,"first_device_type" varchar(64)   encode raw 
,"first_browser" varchar(64)   encode raw 
,"first_browser_major" varchar(64)   encode raw 
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
,"last_location" varchar(2048)   encode lzo 
,"last_location_host" varchar(256)   encode raw 
,"last_location_path" varchar(1024)   encode lzo 
,"last_location_query" varchar(1024)   encode raw 
,"last_location_fragment" varchar(1024)   encode raw 
,"click_count" integer   encode raw 
,"input_count" integer   encode raw 
,"view_count" integer   encode raw 
,"watch_count" integer   encode raw 
,"track_count" integer   encode raw 
,"ecommerce_count" integer   encode raw 
,"page_count" integer   encode raw 
,"orders_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,session_id,first_seen)
 ;
insert into public.session_0662b6d7_286e_4e35_a5e7_c667eb8c318f_$mig  select * from public.session_0662b6d7_286e_4e35_a5e7_c667eb8c318f;
analyze public.session_0662b6d7_286e_4e35_a5e7_c667eb8c318f_$mig;
drop table public.session_0662b6d7_286e_4e35_a5e7_c667eb8c318f cascade;
alter table public.session_0662b6d7_286e_4e35_a5e7_c667eb8c318f_$mig rename to session_0662b6d7_286e_4e35_a5e7_c667eb8c318f;
commit;
-- [15769] Analyzing Table 'session_22bc9bb5_a182_476e_bbb9_734a485bdcc7'
-- [15768] Column Encoding will be modified for public.session_927913da_1c37_48b8_9d88_cec5c1881aec
begin;
lock table public.session_927913da_1c37_48b8_9d88_cec5c1881aec;
create table public.session_927913da_1c37_48b8_9d88_cec5c1881aec_$mig(
"person_id" character(24)   encode RAW 
,"session_id" varchar(24)   encode raw 
,"first_seen" timestamp    encode raw 
,"first_ip_address" varchar(64)   encode raw 
,"first_geo_ip_country" varchar(64)   encode raw 
,"first_geo_ip_city" varchar(64)   encode raw 
,"first_geo_ip_region" varchar(64)   encode raw 
,"first_geo_ip_postal" varchar(10)   encode raw 
,"first_geo_ip_longitude" numeric(7,4)   encode raw 
,"first_geo_ip_latitude" numeric(7,4)   encode raw 
,"first_user_agent" varchar(256)   encode lzo 
,"first_operating_system" varchar(64)   encode raw 
,"first_device_type" varchar(64)   encode raw 
,"first_browser" varchar(64)   encode raw 
,"first_browser_major" varchar(64)   encode raw 
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
,"last_location" varchar(2048)   encode raw 
,"last_location_host" varchar(256)   encode raw 
,"last_location_path" varchar(1024)   encode raw 
,"last_location_query" varchar(1024)   encode raw 
,"last_location_fragment" varchar(1024)   encode raw 
,"click_count" integer   encode raw 
,"input_count" integer   encode raw 
,"view_count" integer   encode raw 
,"watch_count" integer   encode raw 
,"track_count" integer   encode raw 
,"ecommerce_count" integer   encode raw 
,"page_count" integer   encode raw 
,"orders_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,session_id,first_seen)
 ;
insert into public.session_927913da_1c37_48b8_9d88_cec5c1881aec_$mig  select * from public.session_927913da_1c37_48b8_9d88_cec5c1881aec;
analyze public.session_927913da_1c37_48b8_9d88_cec5c1881aec_$mig;
drop table public.session_927913da_1c37_48b8_9d88_cec5c1881aec cascade;
alter table public.session_927913da_1c37_48b8_9d88_cec5c1881aec_$mig rename to session_927913da_1c37_48b8_9d88_cec5c1881aec;
commit;
-- [15768] Analyzing Table 'session_66a79a93_ab55_4506_846f_3ce02046e317'
-- [15769] Column Encoding will be modified for public.session_22bc9bb5_a182_476e_bbb9_734a485bdcc7
begin;
lock table public.session_22bc9bb5_a182_476e_bbb9_734a485bdcc7;
create table public.session_22bc9bb5_a182_476e_bbb9_734a485bdcc7_$mig(
"person_id" character(24)   encode RAW 
,"session_id" varchar(24)   encode raw 
,"first_seen" timestamp    encode raw 
,"first_ip_address" varchar(64)   encode raw 
,"first_geo_ip_country" varchar(64)   encode raw 
,"first_geo_ip_city" varchar(64)   encode raw 
,"first_geo_ip_region" varchar(64)   encode raw 
,"first_geo_ip_postal" varchar(10)   encode raw 
,"first_geo_ip_longitude" numeric(7,4)   encode raw 
,"first_geo_ip_latitude" numeric(7,4)   encode raw 
,"first_user_agent" varchar(256)   encode lzo 
,"first_operating_system" varchar(64)   encode raw 
,"first_device_type" varchar(64)   encode raw 
,"first_browser" varchar(64)   encode raw 
,"first_browser_major" varchar(64)   encode raw 
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
,"last_location" varchar(2048)   encode lzo 
,"last_location_host" varchar(256)   encode raw 
,"last_location_path" varchar(1024)   encode raw 
,"last_location_query" varchar(1024)   encode raw 
,"last_location_fragment" varchar(1024)   encode raw 
,"click_count" integer   encode raw 
,"input_count" integer   encode raw 
,"view_count" integer   encode raw 
,"watch_count" integer   encode raw 
,"track_count" integer   encode raw 
,"ecommerce_count" integer   encode raw 
,"page_count" integer   encode raw 
,"orders_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,session_id,first_seen)
 ;
insert into public.session_22bc9bb5_a182_476e_bbb9_734a485bdcc7_$mig  select * from public.session_22bc9bb5_a182_476e_bbb9_734a485bdcc7;
analyze public.session_22bc9bb5_a182_476e_bbb9_734a485bdcc7_$mig;
drop table public.session_22bc9bb5_a182_476e_bbb9_734a485bdcc7 cascade;
alter table public.session_22bc9bb5_a182_476e_bbb9_734a485bdcc7_$mig rename to session_22bc9bb5_a182_476e_bbb9_734a485bdcc7;
commit;
-- [15769] Analyzing Table 'session_41f6f6f0_fcbe_4643_8e6c_19fc4d98962d'
-- [15768] Column Encoding will be modified for public.session_66a79a93_ab55_4506_846f_3ce02046e317
begin;
lock table public.session_66a79a93_ab55_4506_846f_3ce02046e317;
create table public.session_66a79a93_ab55_4506_846f_3ce02046e317_$mig(
"person_id" character(24)   encode RAW 
,"session_id" varchar(24)   encode raw 
,"first_seen" timestamp    encode raw 
,"first_ip_address" varchar(64)   encode raw 
,"first_geo_ip_country" varchar(64)   encode raw 
,"first_geo_ip_city" varchar(64)   encode raw 
,"first_geo_ip_region" varchar(64)   encode raw 
,"first_geo_ip_postal" varchar(10)   encode raw 
,"first_geo_ip_longitude" numeric(7,4)   encode raw 
,"first_geo_ip_latitude" numeric(7,4)   encode raw 
,"first_user_agent" varchar(256)   encode lzo 
,"first_operating_system" varchar(64)   encode raw 
,"first_device_type" varchar(64)   encode raw 
,"first_browser" varchar(64)   encode raw 
,"first_browser_major" varchar(64)   encode raw 
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
,"last_location" varchar(2048)   encode raw 
,"last_location_host" varchar(256)   encode raw 
,"last_location_path" varchar(1024)   encode raw 
,"last_location_query" varchar(1024)   encode raw 
,"last_location_fragment" varchar(1024)   encode raw 
,"click_count" integer   encode raw 
,"input_count" integer   encode raw 
,"view_count" integer   encode raw 
,"watch_count" integer   encode raw 
,"track_count" integer   encode raw 
,"ecommerce_count" integer   encode raw 
,"page_count" integer   encode raw 
,"orders_total" numeric(10,2)   encode raw 
)
 INTERLEAVED SORTKEY(person_id,session_id,first_seen)
 ;
insert into public.session_66a79a93_ab55_4506_846f_3ce02046e317_$mig  select * from public.session_66a79a93_ab55_4506_846f_3ce02046e317;
analyze public.session_66a79a93_ab55_4506_846f_3ce02046e317_$mig;
drop table public.session_66a79a93_ab55_4506_846f_3ce02046e317 cascade;
alter table public.session_66a79a93_ab55_4506_846f_3ce02046e317_$mig rename to session_66a79a93_ab55_4506_846f_3ce02046e317;
commit;
-- [15768] Analyzing Table 'session_4315fd1b_2436_492a_9772_512acca8d672'
