

with  __dbt__cte__scr_listings as (
with Raw_listing as 
(select * from AIRBNB.raw.raw_listings
)
SELECT
    ID as LISTING_ID,
    NAME as LISTING_NAME,
    LISTING_URL,
    ROOM_TYPE,
    MINIMUM_NIGHTS,
    HOST_ID,
    PRICE AS PRICE_STR,
    CREATED_AT,
    UPDATED_AT
FROM
    Raw_listing
), scr_listings as (
    select *
    from __dbt__cte__scr_listings
)
select
    listing_id,
    listing_name,
    room_type,
    case 
        when minimum_nights = 0 then 1
        else minimum_nights end as minimum_nights,
    host_id,
    replace(
        price_str,
        '$'
    ) :: NUMBER(10, 2) as price,
    created_at,
    updated_at
from scr_listings