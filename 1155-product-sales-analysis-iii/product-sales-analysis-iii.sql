# Write your MySQL query statement below

/*
find product id, year, quantity and price for the first year 
sale of each product.
Approaching this with a CTE to find the first sales year for a product
*/

with fy as (
    select
    product_id
    , min(year) as first_year
    from Sales
    group by product_id
)

/*
Join CTE on the sales table. Each row shows the first
year sales per product. Only find rows matching the product id
and the min year. 
*/

select
    s.product_id
    , fy.first_year
    , s.quantity
    , s.price
from 
    Sales s
join 
    fy
    on s.product_id = fy.product_id and s.year = fy.first_year 