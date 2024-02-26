-- models/audit/audit_fact_orders.sql

{{ config(materialized='table') }}
{{ dbt_audit_helper.compare_column_values(
    source_relation=ref('stg_orders'),
    target_relation=ref('fact_orders'),
    column_name='order_id'
) }}


-- Anurag testing brach protection again