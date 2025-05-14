# Write your MySQL query statement below
select
o.customer_number
from Orders o
join Orders oo
on o.customer_number = oo.customer_number
group by o.customer_number
order by count(o.customer_number) desc
limit 1