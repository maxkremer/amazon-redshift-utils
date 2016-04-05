

--Sanity checks on views.
with person_view as
(
  select viewname, replace(replace(viewname, 'person_view_', ''), '_', '-') as apitoken
  from pg_views
  where viewname like 'person_view_%'
),
session_view as
(
  select viewname, replace(replace(viewname, 'session_view_', ''), '_', '-') as apitoken
  from pg_views
  where viewname like 'session_view_%'
),
click_view as
(
  select viewname, replace(replace(viewname, 'event_click_', ''), '_', '-') as apitoken
  from pg_views
  where viewname like 'event_click_%'
),
page_view as
(
  select viewname, replace(replace(viewname, 'event_page_', ''), '_', '-') as apitoken
  from pg_views
  where viewname like 'event_page_%'
),
input_view as
(
  select viewname, replace(replace(viewname, 'event_input_', ''), '_', '-') as apitoken
  from pg_views
  where viewname like 'event_input_%'
),
view_view as
(
  select viewname, replace(replace(viewname, 'event_view_', ''), '_', '-') as apitoken
  from pg_views
  where viewname like 'event_view_%'
),
watch_view as
(
  select viewname, replace(replace(viewname, 'event_watch_', ''), '_', '-') as apitoken
  from pg_views
  where viewname like 'event_watch_%'
),
track_view as
(
  select viewname, replace(replace(viewname, 'event_track_', ''), '_', '-') as apitoken
  from pg_views
  where viewname like 'event_track_%'
)
,
ecomm_view as
(
  select viewname, replace(replace(viewname, 'event_ecommerce_', ''), '_', '-') as apitoken
  from pg_views
  where viewname like 'event_ecommerce_%'
)


select T.apitoken, 
CASE WHEN  PV.viewname is null THEN 0 ELSE 1 END as Person_View
,CASE WHEN SV.viewname is null THEN 0 ELSE 1 END as Session_View
,CASE WHEN CV.viewname is null THEN 0 ELSE 1 END as click_view
,CASE WHEN GV.viewname is null THEN 0 ELSE 1 END as page_view
,CASE WHEN IV.viewname is null THEN 0 ELSE 1 END as input_view
,CASE WHEN VV.viewname is null THEN 0 ELSE 1 END as view_view
,CASE WHEN WV.viewname is null THEN 0 ELSE 1 END as watch_view
,CASE WHEN TV.viewname is null THEN 0 ELSE 1 END as track_view
,CASE WHEN EV.viewname is null THEN 0 ELSE 1 END as ecomm_view
from tenants T 
left join person_view PV on (T.apitoken = PV.apitoken)
left join session_view SV on (T.apitoken = SV.apitoken)
left join click_view CV on (T.apitoken = CV.apitoken)
left join page_view GV on (T.apitoken = GV.apitoken)
left join input_view IV on (T.apitoken = IV.apitoken)
left join view_view VV on (T.apitoken = VV.apitoken)
left join watch_view WV on (T.apitoken = WV.apitoken)
left join track_view TV on (T.apitoken = TV.apitoken)
left join ecomm_view EV on (T.apitoken = EV.apitoken)


--sanity check on interleaved sort key columns for event_[type] monthly tables

with tables as (
  select distinct id, name
  from stv_tbl_perm
  where name like 'event_%'
)
select trim(t.name), count(*)
from svv_interleaved_columns c join  tables t on (c.tbl = t.id)
group by t.name
order by t.name
