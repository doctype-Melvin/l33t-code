# Write your MySQL query statement below

with pri as (
    select
    employee_id
    , department_id
    from Employee
    where primary_flag = 'Y'
    group by employee_id
),
single as ( 
    select
    employee_id
    , department_id
    from Employee
    group by employee_id
    having count(department_id) = 1
)

select
 employee_id
 , department_id
 from pri
 union
 select
 employee_id
 , department_id
 from single
