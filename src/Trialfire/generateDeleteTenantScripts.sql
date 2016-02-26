WITH cte as (
select replace(T.apitoken, '-', '_') as apitoken
from tenants_ex X left join tenants T on (X.apitoken = T.apitoken)
where X.status != 'ALIVE' and T.apitoken is not null
) 
select  'drop table if exists '+  S."table" + ' cascade /* apitoken: ' +  T.apitoken + ' */;'
from svv_table_info S, cte T
where position(T.apitoken in S."table") > 0
order by T.apitoken, S."table"



select replace(T.apitoken, '-', '_') as apitoken
from tenants_ex X left join tenants T on (X.apitoken = T.apitoken)
where X.status != 'ALIVE' and T.apitoken is not null



delete from tenants where apitoken in (

select T.apitoken
from tenants_ex X join tenants T on (X.apitoken = T.apitoken)
where X.status != 'ALIVE' )
