# Write your MySQL query statement below
/*
Initial idea is to group classes and 
only return those **having** more than five students
*/

select class
from Courses
group by class
having count(student) >= 5