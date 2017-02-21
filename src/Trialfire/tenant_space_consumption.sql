--space by tenant
select distinct
    T.apitoken, T.timestamp_,  sum(b.mbytes) over (partition by T.apitoken) / 1024 as total_gb
from (
    select db_id, id, name, sum(rows) as rows
    from stv_tbl_perm a
    group by db_id, id, name
) as a
join pg_class as pgc on pgc.oid = a.id
join pg_namespace as pgn on pgn.oid = pgc.relnamespace
join pg_database as pgdb on pgdb.oid = a.db_id
join (
    select tbl, count(*) as mbytes
    from stv_blocklist
    group by tbl
) b on a.id = b.tbl
join tenants as T on ( a.name like '%'+replace(T.apitoken, '-','_')+'%' )
order by T.apitoken, mbytes desc, a.db_id, a.name

--disk usage summary
select
  sum(capacity)/1024 as capacity_gbytes, 
  sum(used)/1024 as used_gbytes, 
  (sum(capacity) - sum(used))/1024 as free_gbytes 
from 
  stv_partitions where part_begin=0;
  
--disk usage by tables
select sum(GB) from (
select tablename, megabytes /1024 as GB
from v_space_used_per_tbl
where tablename like 'event_page%')
