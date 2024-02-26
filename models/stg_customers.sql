-- models/stg_tpch/stg_customers.sql

{{ config(materialized='table') }}

SELECT * FROM raw_data.customers
