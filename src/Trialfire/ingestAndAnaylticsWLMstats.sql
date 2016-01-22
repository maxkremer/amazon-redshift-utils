--ingest queue

select Q.starttime , Q.xid,  Q.querytxt, datediff(seconds, starttime, endtime) from
stl_query Q join STL_WLM_QUERY W on (Q.query = W.query and W.service_class = 6)
where starttime between '2015-12-21 01:00' and '2015-12-22 17:00' 
and Q.querytxt like '%f29a13f818b8%' --api token or portion
order by Q.xid, Q.starttime


-- not ingest

select Q.starttime , Q.xid, Q.querytxt, datediff(seconds, starttime, endtime) from
stl_query Q join STL_WLM_QUERY W on (Q.query = W.query and W.service_class = 7)
where starttime between '2015-12-21 01:00' and '2015-12-22 17:00' 
and Q.querytxt like '%f29a13f818b8%'  --api token or portion
order by Q.xid, Q.starttime

