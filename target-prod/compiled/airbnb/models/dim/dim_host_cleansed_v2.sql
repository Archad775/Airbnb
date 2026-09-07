

WITH  __dbt__cte__scr_hosts as (
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
), src_hosts AS (
    SELECT
        *
    FROM
        __dbt__cte__scr_hosts
)
SELECT
    host_id,
    NVL(
        host_name,
        'N/A'
    ) AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    src_hosts