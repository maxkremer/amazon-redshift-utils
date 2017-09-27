
--Total space consumption by tenant (included tables and indexes)

SELECT T.customer_name, T.api_token, T.project_name,  sum(P.relpages) as size,  pg_size_pretty(sum(P.relpages)::bigint*8*1024) as readable_size, T.created
FROM pg_class P left join tenant T on ( P.relname like '%'||replace(T.api_token, '-','_')||'%' )
group by T.customer_name, T.api_token, T.project_name,  T.created
order by size desc;





select relname, P.relpages as size,  pg_size_pretty(P.relpages::bigint*8*1024) as readable_size
from pg_class P 
where P.relname like 'event_page_dd7b34d8_f4a3_4378_99ff_c93f2237a89e_2017_%'



select replace(T.api_token, '-','_') ||','
from tenant T


select max(timestamp_) from event_page_5271b803_4ee1_40f2_889d_0b9e27c68281

--total sales by customer
select  'Select ''' || api_token || ''' as api_token, sum(total) from event_ecommerce_'|| replace(T.api_token, '-','_')  ||' where event_sub_type = ''EC_COMPLETED_ORDER'' UNION'
from tenant T
where customer_name = 'BreezeMaxWeb'


