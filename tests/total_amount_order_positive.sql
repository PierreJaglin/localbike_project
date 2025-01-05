SELECT
    order_id,
    SUM(total_amount_order_total)   as total_amount_order_total
FROM {{ ref('int_localbike_orders')}}
group by order_id
having total_amount_order_total < 0