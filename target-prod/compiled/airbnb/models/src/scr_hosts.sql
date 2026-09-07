With Raw_Hosts as (
select * from AIRBNB.raw.raw_hosts
)
select
    ID as Host_id,
    NAME as Host_name,
    IS_SUPERHOST,
    CREATED_AT,
    UPDATED_AT
FROM
    Raw_Hosts