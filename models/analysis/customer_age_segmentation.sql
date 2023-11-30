{{ config(materialized='view') }}

select 
	age, 
	count(*) 
from 
	icebase.retail.customer_360_final 
group by 1 
order by 1
