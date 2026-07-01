{{ config(materialized='view') }}

with _source as (
select * from raw.stripe.payment
)


select
id as payment_id,
orderid as order_id,
paymentmethod as payment_method,
status as payment_status,
amount as payment_amount,
created as created_at,
_batched_at

from _source