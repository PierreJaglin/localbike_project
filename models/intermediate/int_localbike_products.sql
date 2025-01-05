SELECT 
    p.product_id,
    p.product_name,
    b.brand_name,
    c.category_name
FROM {{ref('stg_localbike__products')}} p
LEFT JOIN {{ ref('stg_localbike__brands')}} b on b.brand_id = p.brand_id
LEFT JOIN {{ ref('stg_localbike__categories')}} c on c.category_id = p.category_id