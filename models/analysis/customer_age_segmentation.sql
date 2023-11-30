{{ config(materialized='view') }}

select 
  case
    when age between 18 and 30 then 'Young Adults'
    when age between 31 and 60 then 'Adults'
    when age between 61 and 75 then 'Senior Citizens'
  end as age_bracket,
  count(*) as total_customers
from 
  icebase.retail.customer_360_final
group by 1
order by 2 desc
