with raw_hosts as(
    -- select * from airbnb.raw.raw_hosts
    select * from {{ source('airbnb', 'hosts')}}
)
select
id as host_id,
name as host_name,
created_at,
updated_at,
is_superhost
from raw_hosts