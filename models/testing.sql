-- models/stg_tpch/stg_orders.sql

{{ config(materialized='incremental') }}

SELECT * FROM raw_data.orders

{% if is_incremental() %}

  WHERE order_date > (SELECT MAX(order_date) FROM {{ this }})

{% endif %}
-- sdczczcz