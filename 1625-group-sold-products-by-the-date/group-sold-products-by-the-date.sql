# Write your MySQL query statement below
# learned about group_concat
# returns a string result with the concatenated non-NULL values from a group

select a.sell_date
, count(distinct a.product) as num_sold
, group_concat(distinct a.product) as products
from Activities a
group by a.sell_date