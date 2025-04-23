# Write your MySQL query statement below
/*
finding the single largest number (max())
there are duplicates (count(num) should be <2)
if there are only duplicates return null
*/

with counts as (
    select
        num
        , count(num) as num_c
    from MyNumbers
    group by num
)

select
    max(m.num) as num
from MyNumbers m
join counts c
    on c.num = m.num and c.num_c = 1