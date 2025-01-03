-- Write your PostgreSQL query statement below
/*
select 
st.student_id
,ex.subject_name
,st.student_name
from Examinations ex
left join Students st
    on st.student_id = ex.student_id
order by student_id
;
*/

select
st.student_id
,st.student_name
,su.subject_name
,Count(ex.subject_name) as attended_exams
from Students st
cross join Subjects su
left join Examinations ex
    on ex.student_id = st.student_id
    and ex.subject_name = su.subject_name
group by 
st.student_id
,st.student_name
,su.subject_name
order by 
st.student_id 
,su.subject_name

; 