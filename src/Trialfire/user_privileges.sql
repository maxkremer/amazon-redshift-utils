
--ace8b421_634f_4060_9118_ffc36db704dc
--ace8b421_634f_4060_9118_ffc36db704dc
CREATE ROLE hrblock WITH LOGIN PASSWORD 'Password678'
--Query the permissions on the tenant tables for a given user

select tablename, 
   HAS_TABLE_PRIVILEGE('hrblock',tablename, 'select') as select,
   HAS_TABLE_PRIVILEGE('hrblock',tablename, 'insert') as insert,
   HAS_TABLE_PRIVILEGE('hrblock',tablename, 'update') as update,
   HAS_TABLE_PRIVILEGE('hrblock',tablename, 'delete') as delete, 
   HAS_TABLE_PRIVILEGE('hrblock',tablename, 'references') as references 
from pg_tables 
where schemaname='public' and tablename like '%ace8b421_634f_4060_9118_ffc36db704dc%'
union 
select viewname, 
   HAS_TABLE_PRIVILEGE('hrblock',viewname, 'select') as select,
   HAS_TABLE_PRIVILEGE('hrblock',viewname, 'insert') as insert,
   HAS_TABLE_PRIVILEGE('hrblock',viewname, 'update') as update,
   HAS_TABLE_PRIVILEGE('hrblock',viewname, 'delete') as delete, 
   HAS_TABLE_PRIVILEGE('hrblock',viewname, 'references') as references 
from pg_views 
where schemaname='public' and viewname like '%ace8b421_634f_4060_9118_ffc36db704dc%'



--List the granted privelges on tables for a given user
select * from information_schema.table_privileges where grantee = 'hrblock'


--Generate a GRANT SELECT script for all tables and views for a tenant
WITH cte as (
select tablename as entity_name from pg_tables where tablename like '%ace8b421_634f_4060_9118_ffc36db704dc%'
union
select viewname as entity_name from pg_views where viewname like '%ace8b421_634f_4060_9118_ffc36db704dc%'
)
select 'GRANT SELECT ON ' || entity_name ||' TO hrblock;' from cte
