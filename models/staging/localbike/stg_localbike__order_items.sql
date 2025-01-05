SELECT 
    CONCAT(order_id,'_',product_id) AS order_items_id,
    order_id,
    item_id,
    product_id,
    quantity,
    list_price,
    discount,
    {{calculate_order_item_price()}}            as amount_order,
    Round({{calculate_order_item_price()}}*discount,2)   as amount_order_discount,
    Round({{calculate_order_item_price()}} - {{calculate_order_item_price()}}*discount,2)   as amount_order_total
FROM {{ source('localbike','order_items') }}