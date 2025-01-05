SELECT 
    s.stocks_id,
    s.store_id,
    sto.store_name,
    s.product_id,
    p.product_name,
    s.quantity
FROM {{ref('stg_localbike__stocks')}} s
LEFT JOIN {{ref('stg_localbike__stores')}} sto on sto.store_id = s.store_id
LEFT JOIN {{ref('stg_localbike__products')}} p on p.product_id = s.product_id