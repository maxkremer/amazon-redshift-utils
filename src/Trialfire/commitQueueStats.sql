select top 100 node, datediff(ms,startqueue,startwork) as queue_time, 
datediff(ms, startwork, endtime) as commit_time, queuelen
from stl_commit_stats


select startqueue,node, datediff(ms,startqueue,startwork) as queue_time, datediff(ms, startwork, endtime) as commit_time
, queuelen 
from stl_commit_stats 
where startqueue >=  dateadd(day, -1, current_Date)
order by queuelen desc , queue_time desc;



select *
from stl_commit_stats
where xid = 34778
