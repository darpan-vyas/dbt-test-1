{{ config(materialized='view') }}

select annual_income, count(*) from icebase.pyflaresdk.sdk_sample_dataset group by 1 order by 1 
