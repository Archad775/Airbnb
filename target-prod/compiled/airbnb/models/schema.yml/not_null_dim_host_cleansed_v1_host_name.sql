
    select *
    from AIRBNB.DBT_PROD.dim_host_cleansed_v1
    where host_name is null
