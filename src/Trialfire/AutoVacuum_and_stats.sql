--generates analyze scripts and shows and "*" for tables that expected to be analyze by the autovacuum daemon

SELECT psut.relname, 'analyze ' || psut.relname ||';' as script,
     to_char(psut.last_vacuum, 'YYYY-MM-DD HH24:MI') as last_vacuum,
     to_char(psut.last_autovacuum, 'YYYY-MM-DD HH24:MI') as last_autovacuum,
       to_char(psut.last_analyze, 'YYYY-MM-DD HH24:MI') as last_analyze,
     to_char(psut.last_autoanalyze, 'YYYY-MM-DD HH24:MI') as last_autoanalyze,
     to_char(pg_class.reltuples, '9G999G999G999') AS n_tup,
     to_char(psut.n_dead_tup, '9G999G999G999') AS dead_tup,
     to_char(CAST(current_setting('autovacuum_vacuum_threshold') AS bigint)
         + (CAST(current_setting('autovacuum_vacuum_scale_factor') AS numeric)
            * pg_class.reltuples), '9G999G999G999') AS av_threshold,
     CASE
         WHEN CAST(current_setting('autovacuum_vacuum_threshold') AS bigint)
             + (CAST(current_setting('autovacuum_vacuum_scale_factor') AS numeric)
                * pg_class.reltuples) < psut.n_dead_tup
         THEN '*'
         ELSE ''
     END AS expect_av
 FROM pg_stat_user_tables psut
     JOIN pg_class on psut.relid = pg_class.oid
 ORDER BY 1;
 

--show settings for autovacuum
select *
from pg_settings
where category ~ 'Autovacuum'

--autovacuum history
select 'vacuum analyze ' || relname || ';'
from pg_stat_user_tables
where relname like '%bf123d39_7ee8_48bf_99a6_cf28f9001b83%'
and (last_analyze is null and last_autoanalyze is null)

vacuum person_clone2dd_cfa9_40bb_89ed_25482f835838;

--bring up table stats for a given table
select *
from pg_stats
where tablename like  'event_click_a2816ba0_352b_47c9_8af7_b00bfa690f90_2016_7'


-- show tables analyzed (not auto-analyze but manually analyzed) in the last 15 hours

select *
from pg_stat_user_tables where (now() - last_analyze)  <  '15 hour'


-- show tables never analyzed (not auto-analyze but manually analyzed) or analyzed over 15 hours agao

select *
from pg_stat_user_tables 
where (now() - last_analyze)  >  '15 hour' or last_analyze is null


--show stats for a given apitoken

select *
from pg_stat_user_tables
where relname like '%dd7b34d8_f4a3_4378_99ff_c93f2237a89e%'
order by last_vacuum asc


