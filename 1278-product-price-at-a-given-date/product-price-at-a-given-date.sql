# Write your MySQL query statement below

# find rows for products with change_date after target date and set default price
with default_price as (
select product_id, 10 as price
from Products
group by product_id
having min(Products.change_date) > '2019-08-16'
)

# find product's recent date before target
,recent_date as (
select product_id, max(change_date) as latest_date
from Products
where Products.change_date <= '2019-08-16'
group by product_id
)

select
    p.product_id
    , p.new_price as price
from Products p
join recent_date r
on p.product_id = r.product_id and p.change_date = r.latest_date
union
select
    product_id
    ,price
from default_price

