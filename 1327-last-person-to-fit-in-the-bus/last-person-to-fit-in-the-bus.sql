# Write your MySQL query statement below
# Bit of googling for this solution :( 
with run_total as (
    select
    person_name
    ,person_id
    # Window function over is quite nice
    , sum(weight) over (order by turn) as total_weight
    from Queue
)

select
q.person_name
from Queue q
join run_total r
on q.person_id = r.person_id
where r.total_weight <= 1000
# cute way of coming up with the single row
order by r.total_weight desc limit 1