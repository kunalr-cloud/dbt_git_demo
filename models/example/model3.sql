 {{config( materialized='table')}} 

with source as (select * from {{ source('bakehouse', 'sales_customers') }})

select first_name, last_name, gender  from source