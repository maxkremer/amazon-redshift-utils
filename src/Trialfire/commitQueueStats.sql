select top 100 node, datediff(ms,startqueue,startwork) as queue_time, 
datediff(ms, startwork, endtime) as commit_time, queuelen
from stl_commit_stats


select startqueue,node, datediff(ms,startqueue,startwork) as queue_time, datediff(ms, startwork, endtime) as commit_time
, queuelen 
from stl_commit_stats 
where startqueue >=  dateadd(h, -1, current_Date)
order by queuelen desc , queue_time desc;



select *
from stl_commit_stats
where xid = 1402318


select * from stv_recents 
where status<>'Done' 
order by starttime desc;

select pg_terminate_backend(26117);

select table_id, last_update, lock_owner, lock_owner_pid from stv_locks;


select * from stv_inflight;


select * from svv_transactions T, SVV_TABLE_INFO I
where T.relation = I.table_id


select *
from stv_sessions;

select * from STV_ACTIVE_CURSORS 


select * from STL_WLM_ERROR



SELECT sysdate AS system_ts,
TRIM(n.nspname) schemaname,
TRIM(c.relname) tablename,
TRIM(l.database) databasename,
l.transaction ,
l.pid,
a.usename,
l.mode,
l.granted
FROM pg_catalog.pg_locks l
JOIN pg_catalog.pg_class c ON c.oid = l.relation
JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace
JOIN pg_catalog.pg_stat_activity a ON a.procpid = l.pid


select * from pg_class where oid = 1374609


select S.*, Q.*
from STV_SESSIONS S join STL_QUERY Q on (S.process = Q.pid)
where database = 'clickstream'
order by S.starttime desc


select elapsed_time/1000000, * from SVL_QUERY_REPORT where query = 2343925 order by segment, step;


select starttime,  query, pid, elapsed, elapsed/1000000 as secs , substring from svl_qlog
where userid = 100
order by starttime desc
limit 100;


select count(*) from alias_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830


select *
from STL_QUERYTEXT where query = 2349122
------------------------------------------------------------------------------
select alias, person_id 
from alias_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830 as A
where person_id in (
   select person_id 
   from alias_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830 
   join list_7a570a5a_2848_4ec5_ab9a_ba3f2f6bc830 as L on (A.alias = L.alias)
)  
-----------------------------------------------------------------------------------
