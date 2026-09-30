# Write your MySQL query statement below
select
customer_id
from customer_transactions
group by customer_id
having
    count(transaction_id) >= 3
and
    datediff(max(transaction_date), min(transaction_date)) >= 30
and 
    1.0*(sum(case when transaction_type = 'refund' then 1 else 0 end)/count(transaction_id)) < 0.2
order by customer_id