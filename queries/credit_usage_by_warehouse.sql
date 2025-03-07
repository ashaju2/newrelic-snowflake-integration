-- https://docs.snowflake.com/en/sql-reference/account-usage/warehouse_metering_history.html
select WAREHOUSE_NAME, SUM(CREDITS_USED) as TOTAL_CREDITS_USED 
from "SNOWFLAKE"."ACCOUNT_USAGE"."WAREHOUSE_METERING_HISTORY" group by 1 order by 2 desc;
