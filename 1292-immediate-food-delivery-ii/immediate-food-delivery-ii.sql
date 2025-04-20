# Write your MySQL query statement below

with first_order as (
    select min(order_date) as min_date
    ,customer_id
    from Delivery
    group by customer_id
)

select round(sum(
    case
    when fo.min_date = customer_pref_delivery_date then 1 else 0 end
)/count(distinct d.customer_id)*100, 2) as immediate_percentage
from first_order fo
left join Delivery d
on d.customer_id = fo.customer_id