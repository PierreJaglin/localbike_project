SELECT 
  oi.order_id,
  oi.order_items_id,
  o.customer_id,
  o.order_status,
  o.order_date,
  o.staff_id,
  o.store_id,
  oi.product_id,
  c.city,
  c.state,
  oi.quantity,
  oi.list_price,
  oi.discount,
  oi.amount_order,
  oi.amount_order_discount,
  oi.amount_order_total
FROM {{ ref('stg_localbike__order_items') }} oi
LEFT JOIN {{ ref('stg_localbike__orders') }} o on o.order_id = oi.order_id
LEFT JOIN {{ ref('stg_localbike__customers') }} c on c.customer_id = o.customer_id