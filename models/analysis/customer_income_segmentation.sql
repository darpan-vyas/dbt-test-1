{{ config(materialized='view') }}

select annual_income, count(*) from icebase.retail.customer group by 1 order by 1 desc
