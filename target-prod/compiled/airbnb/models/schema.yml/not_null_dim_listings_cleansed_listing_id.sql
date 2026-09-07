
    select *
    from AIRBNB.DBT_PROD.dim_listings_cleansed
    where listing_id is null
