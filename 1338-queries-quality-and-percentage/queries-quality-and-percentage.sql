# Write your MySQL query statement below
with temp (counter) as (
    select 
    count(query_name)/count(distinct (query_name))
    from Queries
)

select query_name
, round(avg((rating / position)), 2) as quality
, round(SUM(case when rating < 3 then 1 else 0 end)*100/count(*), 2)
as poor_query_percentage
from Queries, temp
group by query_name