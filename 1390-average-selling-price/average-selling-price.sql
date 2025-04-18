# Write your MySQL query statement below
/*
select p.product_id, 
round(
    ifnull(sum(p.price*s.units)/sum(s.units), 0)
    , 2) as average_price
from Prices p
left join UnitsSold s
on p.product_id = s.product_id
where s.purchase_date >= p.start_date
and s.purchase_date <= p.end_date
group by p.product_id;
*/
SELECT 
    p.product_id,
    ROUND(
        IFNULL(SUM(u.units * p.price) / SUM(u.units), 0)
    , 2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
  ON p.product_id = u.product_id
 AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;