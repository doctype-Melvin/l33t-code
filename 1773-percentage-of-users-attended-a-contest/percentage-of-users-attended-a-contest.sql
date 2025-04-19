# Write your MySQL query statement below
with temp (denominator) as (
    select count(user_id)
    from Users
)

select r.contest_id
, round((count(r.user_id) / temp.denominator)*100, 2) as percentage
from Register r, temp
group by r.contest_id
order by percentage desc, r.contest_id;


/*
select r.contest_id
, count(r.user_id) as registered_u
from Users u
left join Register r
on r.user_id = u.user_id
group by r.contest_id
*/