
select * from pg_roles;

--ace8b421_634f_4060_9118_ffc36db704dc
--ace8b421_634f_4060_9118_ffc36db704dc
CREATE ROLE trackddb WITH LOGIN PASSWORD 'enter_the_word_of_data_science_and_be_amazed'
--Query the permissions on the tenant tables for a given user

ALTER ROLE  trackddb WITH PASSWORD 'enter_the_word_of_data_science_and_be_amazed'

select tablename, 
   HAS_TABLE_PRIVILEGE('trackddb',tablename, 'select') as select,
   HAS_TABLE_PRIVILEGE('trackddb',tablename, 'insert') as insert,
   HAS_TABLE_PRIVILEGE('trackddb',tablename, 'update') as update,
   HAS_TABLE_PRIVILEGE('trackddb',tablename, 'delete') as delete, 
   HAS_TABLE_PRIVILEGE('trackddb',tablename, 'references') as references 
from pg_tables 
where schemaname='public' and tablename like '%dd7b34d8_f4a3_4378_99ff_c93f2237a89e%'
union 
select viewname, 
   HAS_TABLE_PRIVILEGE('trackddb',viewname, 'select') as select,
   HAS_TABLE_PRIVILEGE('trackddb',viewname, 'insert') as insert,
   HAS_TABLE_PRIVILEGE('trackddb',viewname, 'update') as update,
   HAS_TABLE_PRIVILEGE('trackddb',viewname, 'delete') as delete, 
   HAS_TABLE_PRIVILEGE('trackddb',viewname, 'references') as references 
from pg_views 
where schemaname='public' and viewname like '%dd7b34d8_f4a3_4378_99ff_c93f2237a89e%'



--List the granted privelges on tables for a given user
select * from information_schema.table_privileges where grantee = 'trackddb'


--Generate a GRANT SELECT script for all tables and views for a tenant
WITH cte as (
select tablename as entity_name from pg_tables where tablename like '%dd7b34d8_f4a3_4378_99ff_c93f2237a89e%'
union
select viewname as entity_name from pg_views where viewname like '%dd7b34d8_f4a3_4378_99ff_c93f2237a89e%'
)
select 'GRANT SELECT ON ' || entity_name ||' TO trackddb;' from cte
