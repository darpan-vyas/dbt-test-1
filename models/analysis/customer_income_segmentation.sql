{{ config(materialized='view') }}

select annual_income, count(*) from icebase.retail.customer_360_final group by 1 order by 1 desc
