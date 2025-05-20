# Write your MySQL query statement below
select d.id, sum(if(month="Jan", d.revenue, null)) as Jan_Revenue
, sum(if(month="Feb", d.revenue, null)) as Feb_Revenue
, sum(if(month="Mar", d.revenue, null)) as Mar_Revenue
, sum(if(month="Apr", d.revenue, null)) as Apr_Revenue
, sum(if(month="May", d.revenue, null)) as May_Revenue
, sum(if(month="Jun", d.revenue, null)) as Jun_Revenue
, sum(if(month="Jul", d.revenue, null)) as Jul_Revenue
, sum(if(month="Aug", d.revenue, null)) as Aug_Revenue
, sum(if(month="Sep", d.revenue, null)) as Sep_Revenue
, sum(if(month="Oct", d.revenue, null)) as Oct_Revenue
, sum(if(month="Nov", d.revenue, null)) as Nov_Revenue
, sum(if(month="Dec", d.revenue, null)) as Dec_Revenue
from Department d
group by d.id
