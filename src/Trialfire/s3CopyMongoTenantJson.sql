select * from tenants order by timestamp_



CREATE TABLE tenants_ex (
	customer       VARCHAR(100),
	apitoken       VARCHAR(36),
	site           VARCHAR(500),
	status         VARCHAR(20),
	firstName      VARCHAR(100),
	lastName       VARCHAR(100),
	email          VARCHAR(100)
	);
	

copy tenants_ex
from 's3://redshift-copy-jobs/temp/siteExport.json'
credentials 'aws_access_key_id=AKIAIWWQIBBYEWNLJAJA;aws_secret_access_key=vNvYqjz724zaFqwssXqn0KrFSXOpSq+VSRsn6OsB' 
json 'auto';


 
select replace(T.apitoken, '-', '_')
from tenants_ex X left join tenants T on (X.apitoken = T.apitoken)
where X.status != 'ALIVE' and T.apitoken is not null
order by customer




