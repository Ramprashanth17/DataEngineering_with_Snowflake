{{
    config(
        materialized = 'view',
    )
}}
with dim_hosts_cleaned as (
    select * from {{ ref('src_hosts') }}
)
select 
host_id,
created_at,
is_superhost,
updated_at,
nvl (
    host_name,
    'Anonymous'
) AS host_name
from src_hosts