
    select *
    from AIRBNB.DBT_PROD.dim_listings_cleansed
    where host_id is null
