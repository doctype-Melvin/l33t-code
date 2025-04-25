# Write your MySQL query statement below
/*
condition
a + b > c
b + c > a
a + c > b
*/

select x, y, z
, case 
    when x+y>z and x+z>y and y+z>x
    then 'Yes'
    else 'No'
end as triangle
from Triangle