# Write your MySQL query statement below
with first_date as (
    select
    player_id
    ,min(event_date) as first_login
    from Activity
    group by player_id
),
consecutive as (
    select 
    distinct a.player_id
    from Activity a
    left join first_date f
    on f.player_id = a.player_id
    where a.event_date = date_add(f.first_login, interval 1 day)
)

select
round(count(c.player_id)/count(f.player_id), 2) as fraction
from first_date f
left join consecutive c
on c.player_id = f.player_id