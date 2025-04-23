# Write your MySQL query statement below
/*
group the result by user_id and add 
a count for each follower a user has
and order by that count
*/

select
    user_id
    , count(follower_id) as followers_count
from Followers
group by user_id
order by user_id