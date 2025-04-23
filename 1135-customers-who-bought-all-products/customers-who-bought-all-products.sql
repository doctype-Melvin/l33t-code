# Write your MySQL query statement below
/*
Only return customers that bought all the products
There is a customers table that holds customer-product-relationships

*/

select
    customer_id
from Customer
group by customer_id
having count(distinct product_key) = (select count(*) from Product)