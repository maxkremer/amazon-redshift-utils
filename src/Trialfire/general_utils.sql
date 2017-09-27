--some general utility queries

--whats going on right now
 SELECT now() - pg_stat_activity.query_start as duration , *
  FROM pg_stat_activity where state = 'active';
 

;vacuum analyze alias_32e94f9b_e24b_4a3f_a00e_a2a1821b2fe9;

--whats going on that's been running for > 2 min
select now() - pg_stat_activity.query_start as duration , *
from pg_stat_activity 
where  now() - pg_stat_activity.query_start > interval '2 minutes' and state = 'active';


--display conf settings for the query planner
select *
from pg_settings
where category ~ 'Planner'

 --two ways to kill queries
 SELECT pg_cancel_backend( /* pid goes here */ ); 
 SELECT pg_terminate_backend(/* pid goes here */); 



