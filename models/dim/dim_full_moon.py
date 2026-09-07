from snowflake.snowpark.functions import udf, col
from snowflake.snowpark.types import BooleanType, DateType

def model(dbt, session):
    dbt.config(
        materialized='table',
        packages=["holidays"]
    )

    @udf(return_type=BooleanType(), input_types=[DateType()], packages=["holidays"])
    def is_holiday(date_val):
        import holidays
        german_holidays = holidays.Germany()
        return date_val in german_holidays

    orders_df = dbt.ref("seed_full_moon_dates")
    return orders_df.with_column("IS_HOLIDAY", is_holiday(col("FULL_MOON_DATE")))