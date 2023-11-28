{{ config(materialized='view') }}

SELECT age, count(*) as total_customers FROM sdk_sample_dataset group by 1 order by 1
