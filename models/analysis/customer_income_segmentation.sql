{{ config(materialized='view') }}

select 
	annual_income, 
	count(*) as total_customers 
from 
	icebase.retail.orders_enriched 
group by 1 
order by 1
