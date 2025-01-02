# Write your MySQL query statement below
select
    pt.product_name
    ,st.year
    ,st.price
from Sales st
left join Product pt
    on st.product_id = pt.product_id
;