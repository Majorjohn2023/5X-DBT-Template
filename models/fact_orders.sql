-- models/fact/fact_orders.sql

{{ config(materialized='table') }}

SELECT
    order_id,
    customer_id,
    order_date,
    amount
FROM {{ ref('stg_orders') }}
