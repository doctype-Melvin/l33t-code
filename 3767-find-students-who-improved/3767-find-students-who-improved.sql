# Write your MySQL query statement below
with source as (
    select
    student_id
    , subject
    , score
    , exam_date
    , row_number() over (partition by student_id, subject order by exam_date asc) as first_date
    , row_number() over (partition by student_id, subject order by exam_date desc) as latest_date
    from scores
    order by subject, student_id
)

select
student_id
, subject
, max(case when first_date = 1 then score end) as first_score
, max(case when latest_date = 1 then score end) as latest_score
from source
group by student_id, subject
having count(exam_date) > 1
and max(case when first_date = 1 then score end) < max(case when latest_date = 1 then score end)
order by student_id, subject asc