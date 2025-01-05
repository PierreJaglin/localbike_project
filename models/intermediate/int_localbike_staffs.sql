SELECT 
    staff.*,
    CONCAT(staff.first_name,' ',staff.last_name) staff_name,
    CONCAT(manager.first_name,' ',manager.last_name) manager_name,
    store.store_name
FROM {{ ref('stg_localbike__staffs') }} staff   
LEFT JOIN {{ ref('stg_localbike__staffs') }} manager ON CAST(staff.manager_id AS INTEGER) = manager.staff_id
LEFT JOIN {{ ref('stg_localbike__stores')}} store on store.store_id = staff.store_id