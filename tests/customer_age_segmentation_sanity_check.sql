select
    age_bracket
from
    {{ ref('customer_age_segmentation')}}
where
    age_bracket is null or
    age_bracket not in ('Adults','Children','Senior Citizens','Super Senior Citizens','Young Adults') or
    total_customers < 0 or
    total_orders < 0 or
    total_revenue < 0
