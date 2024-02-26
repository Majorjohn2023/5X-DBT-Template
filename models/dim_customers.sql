-- models/dim/dim_customers.sql

{{ config(materialized='view') }}

SELECT
    customer_id,
    first_name,
    last_name,
    email
FROM {{ ref('stg_customers') }}
