# Write your MySQL query statement below
/*
select
e.employee_id
, e.salary as bonus
from Employees e
left join Employees ee
on e.employee_id = ee.employee_id
where left(e.name, 1) != 'M'
and e.employee_id%2 != 0
*/

select
e.employee_id
, if(left(e.name, 1) != 'M' and e.employee_id % 2 != 0, e.salary, 0) as bonus
from Employees e
order by e.employee_id