SELECT 
    order_id,
    o.customer_id,
    c.city,
    c.state,
    order_date,
    store_id,
    staff_id,
    sum(quantity) as total_quantity,
    sum(amount_order) as total_amount_order,
    sum(amount_order_discount) as total_amount_order_discount,
    sum(amount_order_total) as total_amount_order_total
FROM {{ ref('int_localbike_order_items')}} o
LEFT JOIN {{ref('stg_localbike__customers')}} c on c.customer_id = o.customer_id
GROUP BY 
    order_id,
    customer_id,
    city,
    state,
    order_date,
    store_id,
    staff_id
