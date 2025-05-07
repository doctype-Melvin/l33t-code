# Write your MySQL query statement below

# Lots of help for this first solution that satisfies the initial test case

select s.id
, case 
    when s.id = (select count(*) from Seat) and (select count(*) from Seat) % 2 = 1 
    then s.student
    when s.id%2 = 1 
    then (select student from Seat where id = s.id + 1 )
    else (select student from Seat where id = s.id - 1)
    end as student
from Seat s