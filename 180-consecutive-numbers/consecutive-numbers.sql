# Write your MySQL query statement below
/*
Find the number that appears 
three consecutive times
the Id colum autoincrements
*/

with look_ahead as (
    select 
        num
        , lead(num, 1) over() num1
        , lead(num, 2) over() num2
    from Logs
)

select 
    num ConsecutiveNums
from
look_ahead
where num = num1 and num=num2
group by num
