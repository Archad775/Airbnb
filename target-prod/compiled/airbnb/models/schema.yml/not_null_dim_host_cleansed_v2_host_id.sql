
    select *
    from AIRBNB.DBT_PROD.dim_host_cleansed_v2
    where host_id is null
