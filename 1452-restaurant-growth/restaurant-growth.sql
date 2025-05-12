# Write your MySQL query statement below
/*
Self Join Construction
-- Step 1 / Basic select for first table --
select x.visited_on, sum(amount) as amount
from Customer x

-- Step 2 / Add self join with datediff condition to create 7-day-window --
select x.visited_on, sum(amount) as amount
from Customer x join Customer y
on DATEDIFF(x.visited_on, y.visited_on) between 0 and 6
group by x.visited_on

-- Step 3 / Make sure there are no duplicate dates and there's a 7-day-window --
from (select distinct visited_on from Customer) x
...
having count(distinct y.visited_on) > 6
*/
select x.visited_on, sum(amount) as amount, round(sum((amount)/7), 2) as average_amount
from (select distinct visited_on from Customer) x
join Customer y
on DATEDIFF(x.visited_on, y.visited_on) between 0 and 6
group by x.visited_on
having count(distinct y.visited_on) > 6