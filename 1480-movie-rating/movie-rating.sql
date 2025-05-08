# Write your MySQL query statement below
# find the user with most ratings
(select
# add the results column
    u.name as results
    from MovieRating mr
# join the rating table and users table
    left join Users u on u.user_id = mr.user_id
    group by mr.user_id
# order can resolve tiebreaks for names
    order by count(mr.user_id) desc, u.name asc
# simply return the first row only
    limit 1)
# stack ALL result tables by union
union all

# find the highest average rating 
(select
# add the results column
m.title as results
    from MovieRating mr
# join rating and movies table
    left join Movies m on m.movie_id = mr.movie_id
# for the desired month of february
    where mr.created_at between '2020-02-01' and '2020-02-29'
    group by mr.movie_id
# also add sorting and tiebreak 
    order by avg(mr.rating) desc, m.title asc
# only return the first result row
    limit 1)
;