select S.*, (elapsed_time/1000000)/60 as total_minutes, starttime,datediff(minute,starttime,endtime) as duration
from svv_vacuum_summary S join  stl_query Q ON (S.xid = Q.xid)
where table_name = ' ' --enter table name
order by S.xid



select distinct T.name, V.*
from stl_vacuum V join  stv_tbl_perm T ON (V.table_id =  T.id)
where T.name = ' ' --enter table name
order by eventtime

