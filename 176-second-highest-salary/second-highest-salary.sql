# Write your MySQL query statement below
# had to look up solution for this one
select (
    select distinct salary
    from employee order by salary desc
    limit 1 offset 1
) as SecondHighestSalary