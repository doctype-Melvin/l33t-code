# Write your MySQL query statement below
# high earner = salary in top three unique salaries
# find high earners in each department

with salaries as (
    select
    row_number() over (partition by e.departmentID order by e.salary desc) as 'row_number'
    ,dense_rank() over (partition by e.departmentID order by e.salary desc)  as 'rank'
    , e.salary as Salary
    , e.name as Employee
    , e.departmentId as dId
    from Employee e
)

select
d.name as Department
,Employee
,Salary
from salaries
join Department d
on d.id = salaries.dId
where salaries.rank <= 3

