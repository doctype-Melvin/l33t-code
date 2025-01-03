# Write your MySQL query statement below
/*
select 
current.id as Id
from Weather current
left join Weather previous
    on current.id = previous.id + 1 
    where current.temperature > previous.temperature
;
*/

# CTE approach
with ranked_records as (
    select
        id
        ,recordDate
        ,temperature
        ,Row_number() over (order by recordDate) as row_rank
    from Weather
)
select 
current.id as Id
from ranked_records current
left join ranked_records previous
    on current.row_rank = previous.row_rank + 1
    and DATEDIFF(current.recordDate, previous.recordDate) = 1
where current.temperature > previous.temperature
;