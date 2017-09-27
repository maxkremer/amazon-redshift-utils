/*
***** DELETE BY CUSTOMER ID

*/


--generate drop table script
WITH cte as (
select replace(T.api_token, '-', '_') as apitoken
from tenant T
where T.customer_id = '589e18ea4cedfd0001b76adf' 
) 
select  'drop table if exists '|| S.relname || ' cascade /* apitoken: ' ||  T.apitoken || ' */;'
from pg_stat_user_tables S, cte T
where position(T.apitoken in S.relname) > 0
order by T.apitoken, relname;



delete  from tenant_table
using tenant T where tenant_table.api_token = T.api_token
and T.customer_id = '589e18ea4cedfd0001b76adf';


delete from tenant where customer_id = '589e18ea4cedfd0001b76adf';


/*
***** DELETE BY APITOKEN

*/


--generate drop table script
WITH cte as (
select replace(T.api_token, '-', '_') as apitoken
from tenant T
  where T.api_token IN (
 '5271b803-4ee1-40f2-889d-0b9e27c68281'

  ) 
) 
select  'drop table if exists '|| S.relname || ' cascade /* apitoken: ' ||  T.apitoken || ' */;'
from pg_stat_user_tables S, cte T
where position(T.apitoken in S.relname) > 0
order by T.apitoken, relname;



delete  from tenant_table
using tenant T where tenant_table.api_token = T.api_token
and T.api_token IN (
'5271b803-4ee1-40f2-889d-0b9e27c68281'


  ) ;


delete from tenant where api_token IN (
'5271b803-4ee1-40f2-889d-0b9e27c68281'
) ;




