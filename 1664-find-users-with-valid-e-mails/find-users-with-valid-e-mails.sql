# Write your MySQL query statement below
# Took in some help to find the correct regex pattern
# which was definitely the hardest part here
# Note that in MySQL you need to double-escape backslashes in regex patterns 
select *
from Users
where mail regexp '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode\\.com$'
group by user_id