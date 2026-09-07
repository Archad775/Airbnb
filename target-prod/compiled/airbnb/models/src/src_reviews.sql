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