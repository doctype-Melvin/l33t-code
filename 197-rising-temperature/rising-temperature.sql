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
/*
rank the rows by date

*/


/*
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
*/

select w2.id as 'Id'
from weather w1
join weather w2 on w1.recordDate = w2.recordDate - Interval 1 day
where w1.temperature < w2.temperature
;