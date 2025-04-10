# Write your MySQL query statement below

/*
select s.student_id, s.student_name, e.subject_name
from Students s
left join Examinations e
on s.student_id = e.student_id
left join Subjects c
on e.subject_name = c.subject_name;
*/

select s.student_id, s.student_name, c.subject_name, count(e.student_id) as attended_exams
from Students s
cross join Subjects c
left join Examinations e
on s.student_id = e.student_id
and e.subject_name = c.subject_name
group by s.student_id, s.student_name, c.subject_name
order by s.student_id, c.subject_name;

