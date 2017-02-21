
--  CHR(00) is the null charachter --927913da_1c37_48b8_9d88_cec5c1881aec

update session_927913da_1c37_48b8_9d88_cec5c1881aec
set first_referrer_query = replace(first_referrer_query, CHR(00), ' ')
where strpos(first_referrer_query, CHR(00)) > 0;

update session_927913da_1c37_48b8_9d88_cec5c1881aec
set first_location_query = replace(first_location_query, CHR(00), ' ')
where strpos(first_location_query, CHR(00)) > 0;


update session_927913da_1c37_48b8_9d88_cec5c1881aec 
set last_location_query = replace(last_location_query, CHR(00), ' ')
where strpos(last_location_query, CHR(00)) > 0;

update session_927913da_1c37_48b8_9d88_cec5c1881aec
set first_utm_source = replace(first_utm_source, CHR(00), ' ')
where strpos(first_utm_source, CHR(00)) > 0;


update person_927913da_1c37_48b8_9d88_cec5c1881aec 
set first_referrer_query = replace(first_referrer_query, CHR(00), ' ')
where strpos(first_referrer_query, CHR(00)) > 0;


update person_927913da_1c37_48b8_9d88_cec5c1881aec 
set first_location_fragment = replace(first_location_fragment, CHR(00), ' ')
where strpos(first_location_fragment, CHR(00)) > 0;

delete
from event_page_927913da_1c37_48b8_9d88_cec5c1881aec_2016_4
where strpos(location_query, CHR(00)) > 0;

delete
from event_click_927913da_1c37_48b8_9d88_cec5c1881aec_2016_4
where strpos(location_query, CHR(00)) > 0;

delete
from event_input_927913da_1c37_48b8_9d88_cec5c1881aec_2016_4
where strpos(location_query, CHR(00)) > 0;

select id
from event_page_927913da_1c37_48b8_9d88_cec5c1881aec
where strpos(referrer_query, CHR(00)) > 0 or strpos(referrer_query, CHR(00)) > 0

select *
from event_input_927913da_1c37_48b8_9d88_cec5c1881aec
where strpos(location_query, CHR(00)) > 0 

select * from event_input_927913da_1c37_48b8_9d88_cec5c1881aec where id='00e7e33f16570f7fbbf6a048'

select *
from event_click_927913da_1c37_48b8_9d88_cec5c1881ae
where strpos(location_query, CHR(00)) > 0 OR strpos(referrer_query, CHR(00)) > 0
