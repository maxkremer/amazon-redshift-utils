WITH cte as (
select replace(T.api_token, '-', '_') as apitoken
from tenant T
where T.customer_id = '5477b46fe4b00ad579a00020' 
) 
select  'drop table if exists '+  S."table" + ' cascade /* apitoken: ' +  T.apitoken + ' */;'
from svv_table_info S, cte T
where position(T.apitoken in S."table") > 0
order by T.apitoken, S."table";



delete  from tenant_table
using tenant T where tenant_table.api_token = T.api_token
and T.customer_id = '5477b46fe4b00ad579a00020'


delete from tenant where customer_id = '5477b46fe4b00ad579a00020';


select * from tenant_table
