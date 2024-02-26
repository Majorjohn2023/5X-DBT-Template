-- models/int/int_customer_orders.sql

{{ config(materialized='table') }}
{{ dbt_utils.star(from=ref('stg_customers'), except=["updated_at"]) }}

FROM {{ ref('stg_customers') }}
JOIN {{ ref('fact_orders') }} ON stg_customers.customer_id = fact_orders.customer_id
