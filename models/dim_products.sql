-- models/dim/dim_products.sql

{{ config(materialized='view') }}

SELECT
    product_id,
    product_name,
    category
FROM {{ ref('stg_products') }}
