
    select *
    from AIRBNB.DBT_PROD.dim_listings_cleansed
    where room_type <= 0
