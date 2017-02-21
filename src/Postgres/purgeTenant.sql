--2f28b2dd-cfa9-40bb-89ed-25482f835838 
delete from tenant where api_token in ( '9ee3ab17-d1e9-414c-928f-7aa962f30e53', '87c63675-1a3f-4823-a55e-76f73cd078f1', '22bc9bb5-a182-476e-bbb9-734a485bdcc7');
delete from tenant_table where api_token in ( '9ee3ab17-d1e9-414c-928f-7aa962f30e53', '87c63675-1a3f-4823-a55e-76f73cd078f1', '22bc9bb5-a182-476e-bbb9-734a485bdcc7');

select 'drop table ' || table_name || ' cascade;'
from information_schema.tables
where table_schema = 'public' and table_type = 'BASE TABLE'
and table_name like '%76f73cd078f1%';


select * from tenant
drop table alias_22bc9bb5_a182_476e_bbb9_734a485bdcc7 cascade;
drop table event_click_22bc9bb5_a182_476e_bbb9_734a485bdcc7_2016_3 cascade;
drop table event_click_22bc9bb5_a182_476e_bbb9_734a485bdcc7_2016_4 cascade;
drop table event_click_22bc9bb5_a182_476e_bbb9_734a485bdcc7_2016_5 cascade;
drop table event_click_22bc9bb5_a182_476e_bbb9_734a485bdcc7_2016_6 cascade;
drop table event_page_22bc9bb5_a182_476e_bbb9_734a485bdcc7_2016_7 cascade;
drop table event_input_22bc9bb5_a182_476e_bbb9_734a485bdcc7_2016_3 cascade;
drop table event_input_22bc9bb5_a182_476e_bbb9_734a485bdcc7_2016_4 cascade;
drop table event_input_22bc9bb5_a182_476e_bbb9_734a485bdcc7_2016_5 cascade;
drop table event_input_22bc9bb5_a182_476e_bbb9_734a485bdcc7_2016_6 cascade;
drop table event_page_22bc9bb5_a182_476e_bbb9_734a485bdcc7_2016_6 cascade;
drop table event_page_22bc9bb5_a182_476e_bbb9_734a485bdcc7_2016_3 cascade;
drop table event_page_22bc9bb5_a182_476e_bbb9_734a485bdcc7_2016_4 cascade;
drop table event_page_22bc9bb5_a182_476e_bbb9_734a485bdcc7_2016_5 cascade;
drop table person_22bc9bb5_a182_476e_bbb9_734a485bdcc7 cascade;
drop table session_22bc9bb5_a182_476e_bbb9_734a485bdcc7 cascade;
drop table product_22bc9bb5_a182_476e_bbb9_734a485bdcc7 cascade;



