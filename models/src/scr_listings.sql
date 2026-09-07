with Raw_listing as 
(select * from {{ source('airbnb', 'listings') }}
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