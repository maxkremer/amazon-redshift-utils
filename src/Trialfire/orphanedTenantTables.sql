




--oprhan tables
with cte as (
select distinct name,  replace(substring ( regexp_substr(name::varchar, '_[a-z0-9_]{36}') from 2 for 36), '_', '-') as apitoken
from stv_tbl_perm 
where name  like 'event_%' or name  like 'product_%'  or name  like 'person_%'  or name  like 'session_%'  or name  like 'alias_%'
)
select 'drop table if exists '+C.name+' cascade;'
from cte C
where C.apitoken  not in (select apitoken from tenants )


