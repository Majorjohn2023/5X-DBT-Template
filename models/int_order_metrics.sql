-- models/int/int_order_metrics.sql

{{ config(materialized='table') }}

WITH order_data AS (
    SELECT
        order_id,
        SUM(amount) as total_amount
    FROM {{ ref('fact_orders') }}
    GROUP BY order_id
)

SELECT * FROM order_data
