# Write your MySQL query statement below
/*
manager = employee with at least 1 report
return ids, names and number of direct reports of all managers
return average age of reports rounded
ordered by employee_id
Initial thought is to use a left join to determin the
counts and averages grouped by eomployee ids
*/

select
    e.employee_id
    , e.name
    , count(ee.name) as reports_count
    , round(avg(ee.age)) as average_age
from Employees e
left join Employees ee
    on e.employee_id = ee.reports_to
group by e.employee_id
having count(ee.name) > 0
order by e.employee_id