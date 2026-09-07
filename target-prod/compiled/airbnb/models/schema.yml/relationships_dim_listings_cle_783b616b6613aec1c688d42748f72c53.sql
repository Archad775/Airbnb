
    
    

with child as (
    select host_id as from_field
    from AIRBNB.DBT_PROD.dim_listings_cleansed
    where host_id is not null
),

parent as (
    select host_id as to_field
    from AIRBNB.DBT_PROD.dim_host_cleansed_v1
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


