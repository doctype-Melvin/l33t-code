# Write your MySQL query statement below
select *
from cinema
where id % 2 != 0
and trim(description) != "boring"
order by rating desc;