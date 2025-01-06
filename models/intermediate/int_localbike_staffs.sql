SELECT 
    staff.*,
    CONCAT(staff.first_name,' ',staff.last_name) staff_name,
    store.store_name
FROM {{ ref('stg_localbike__staffs') }} staff   
LEFT JOIN {{ ref('stg_localbike__stores')}} store on store.store_id = staff.store_id