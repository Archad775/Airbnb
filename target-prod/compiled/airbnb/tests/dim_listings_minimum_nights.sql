select * from AIRBNB.DBT_PROD.dim_listings_cleansed 
where minimum_nights < 1
limit 10