# Write your MySQL query statement below
select 
activity_date as day
, count(distinct user_id) as active_users
from Activity
# using date add and a negative interval value to go back 30 days
# both the lower threshold and the upper threshold is included in 'between'
# you could also use 2019-07-27 with -29 day interval
where activity_date between date_add("2019-07-28", interval -30 day) and "2019-07-27"
group by day