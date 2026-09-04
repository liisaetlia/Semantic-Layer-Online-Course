select customer_id 
from dim_customers 
where customer_id in (
    select customer_id 
    from fct_orders 
    where ordered_at >= '2023-01-01' 
    and ordered_at <= '2023-12-31'
)