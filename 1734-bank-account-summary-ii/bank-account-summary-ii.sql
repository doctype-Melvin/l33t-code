# Write your MySQL query statement below
/*
sum up transaction amounts
group by account
having sum > 10000
any order
*/

select 
u.name
, sum(amount) as balance
from Transactions t
join Users u
on t.account = u.account
group by t.account
having sum(amount) > 10000