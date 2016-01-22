select count(*) from person_16129df5_5985_40c3_b42b_7d3b553583aa


--create a new table like the original
create table person_16129df5_5985_40c3_b42b_7d3b553583aa_NEW (like person_16129df5_5985_40c3_b42b_7d3b553583aa);

-- rename original table
alter table person_16129df5_5985_40c3_b42b_7d3b553583aa rename to person_16129df5_5985_40c3_b42b_7d3b553583aa_OLD;

-- rename new table to match old name of original
alter table person_16129df5_5985_40c3_b42b_7d3b553583aa_NEW rename to person_16129df5_5985_40c3_b42b_7d3b553583aa;


