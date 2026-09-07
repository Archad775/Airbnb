

with  __dbt__cte__src_reviews as (
With Raw_reviews as (
select * from AIRBNB.raw.raw_reviews
)
select
    COMMENTS AS review_texts,
    DATE as review_date,
    LISTING_ID,
    REVIEWER_NAME,
    SENTIMENT AS review_sentiment
from Raw_reviews
), src_reviews as (
    select
        *
    from
        __dbt__cte__src_reviews
)
select
md5(cast(coalesce(cast(listing_id as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(review_date as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(reviewer_name as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(review_texts as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) as review_id,
    *
from src_reviews
where review_texts is not null
