# Write your MySQL query statement below
select
eu.unique_id,
ee.name
from employees ee
left join EmployeeUNI eu
    on ee.id = eu.id
    ;
