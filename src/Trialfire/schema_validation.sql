-- Check for un-listed monthlys
--------------------------------------- 
-- looks for monthly event tables exsiting in the schema but not in tenant_table table
-- If this returns any rows somehting is wrong.
with catalog as (
select * 
from pg_stat_user_tables
where schemaname = 'public' and relname ~ 'event_([^_]+_)+[0-9]{4}_[1-9]{1,2}$' --monhtly event tables 
),
tt as (
select 'event_' || lower(event_type) || '_' ||replace(T.api_token, '-', '_') || '_' || year || '_' || month as tablename
from tenant_table T)
select 'drop table ' || relname || ';'
from catalog C left join  tt T on (C.relname = T.tablename)
where T.tablename is null;


-- Check for non-exisiting monthlys (inverse of above)
-----------------------------------------
-- Looks for monthly event tables that should exist in the schema but do not
-- If this returns any rows somehting is wrong
------------------------------------------------------------------------------------

select * 
from tenant_table T
where 'event_' || lower(event_type) || '_' ||replace(T.api_token, '-', '_') || '_' || year || '_' || month 
NOT IN (
  select relname
  from pg_stat_user_tables
 ) ;



-- Empty Monthlys 
-------------------------------------
-- Looks for empty monthly tables - there should never be any
-- WARNING - stats must be upto data before this query is considered reliable
---------------------------------------------------------------------------------
select *
from pg_stat_user_tables
where schemaname = 'public' 
and (relname  ~ 'event_([^_]+_)+[0-9]{4}_[1-9]{1,2}$' ) 
and n_live_tup = 0 AND n_dead_tup = 0 and last_analyze is not null;

 --Generates the SQL to drop empty monhtly tables (see above)

select 'drop table ' ||  'event_' || lower(event_type) || '_' ||replace(T.api_token, '-', '_') || '_' || year || '_' || month || ';'
from tenant_table T
where 'event_' || lower(event_type) || '_' ||replace(T.api_token, '-', '_') || '_' || year || '_' || month 
IN (
  select relname
  from pg_stat_user_tables
  where schemaname = 'public' 
  and (relname  ~ 'event_([^_]+_)+[0-9]{4}_[1-9]{1,2}$') 
  and n_live_tup = 0 AND n_dead_tup = 0 and last_analyze is not null
);


-- Generate the sql to issue analyze commands against tables with not stats
select 'analyze ' || relname || ';'
  from pg_stat_user_tables
  where schemaname = 'public' 
  and (relname  ~ 'event_([^_]+_)+[0-9]{4}_[1-9]{1,2}$' ) 
  and n_live_tup = 0 AND n_dead_tup = 0 and last_analyze is  null;






-- Inheritance check
-------------------------------
-- Every monhtly table should have a base table parent
-- Tables listed here with the parent column blank are erroneous

SELECT c.relname AS child, p.relname AS parent
FROM
    pg_class C LEFT JOIN pg_inherits H ON (H.inhrelid=c.oid)
    LEFT JOIN pg_class as p ON (inhparent=p.oid)
WHERE (C.relname ~ 'event_([^_]+_)+[0-9]{4}_[1-9]{1,2}$' )  and C.reltype != 0
and p.relname is not null;


-- Monthly event table Primary Key checks
------------------------------------------------------------------------
-- Every monthly table should have a primary key on id


select t.table_name, tc.constraint_name, kc.column_name
from information_schema.tables t 
 left join information_schema.table_constraints tc 
  on t.table_name = tc.table_name
  left join information_schema.key_column_usage kc 
    on kc.table_name = tc.table_name and kc.table_schema = tc.table_schema and kc.constraint_name = tc.constraint_name
where tc.constraint_type = 'PRIMARY KEY'
and tc.table_name ~ 'event_([^_]+_)+[0-9]{4}_[1-9]{1,2}$';


-- Alias/Person/Product/Session table Primary Key checks
------------------------------------------------------------------------

select t.table_name, tc.constraint_name, kc.column_name
from information_schema.tables t 
 left join information_schema.table_constraints tc 
  on t.table_name = tc.table_name
  left join information_schema.key_column_usage kc 
    on kc.table_name = tc.table_name and kc.table_schema = tc.table_schema and kc.constraint_name = tc.constraint_name
where tc.constraint_type = 'PRIMARY KEY'
and  (tc.table_name  like  'alias%' OR tc.table_name  like  'person%' OR tc.table_name  like  'session%'  OR tc.table_name  like  'product%')




--INDEX CHECKS --- queries indexs on all the tables
-----------------------------------------------------------------------------------

-- check event_type indexes

SELECT tab.relname as tablename, cls.relname as indexname, am.amname as indextype, row_number() over (partition by  tab.relname order by  tab.relname, cls.relname) as indexnumber
  FROM pg_index idx 
	  JOIN pg_class cls ON cls.oid=idx.indexrelid
	   JOIN pg_class tab ON tab.oid=idx.indrelid
	  JOIN pg_am am ON am.oid=cls.relam
WHERE tab.relname  ~ 'event_([^_]+_)+[0-9]{4}_[1-9]{1,2}$'
ORDER BY tab.relname, cls.relname;

-- check person/session/alias/product keys


SELECT tab.relname as tablename, cls.relname as indexname, am.amname as indextype, row_number() over (partition by  tab.relname order by  tab.relname, cls.relname) as indexnumber
  FROM pg_index idx 
	  JOIN pg_class cls ON cls.oid=idx.indexrelid
	   JOIN pg_class tab ON tab.oid=idx.indrelid
	  JOIN pg_am am ON am.oid=cls.relam
WHERE (tab.relname  like  'alias%' OR tab.relname  like  'person%' OR tab.relname  like  'session%'  OR tab.relname  like  'product%')
ORDER BY tab.relname, cls.relname;





