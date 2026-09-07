
    select count(*) as row_count
    from AIRBNB.DBT_PROD.dim_listings_cleansed
    Having count(*) < 1000000
