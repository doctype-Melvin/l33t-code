# Write your MySQL query statement below
with source as (
    select 
    customer_id
    , sum(case when transaction_type = 'purchase' then 1 end) over (partition by customer_id) as p_by_customer
    , sum(case when transaction_type = 'refund' then 1 else 0 end) over (partition by customer_id) as r_by_customer
    , count(transaction_id) over (partition by customer_id) as t_by_customer
    , min(transaction_date) over (partition by customer_id) as first_trans
    , max(transaction_date) over (partition by customer_id) as latest_trans
    from customer_transactions
)

select
customer_id
from (
        select
        customer_id
        from source
        where p_by_customer >= 3
        and (r_by_customer/t_by_customer) < 0.2
        and datediff(latest_trans, first_trans) >= 30
    ) 
    as intermediate
group by customer_id
