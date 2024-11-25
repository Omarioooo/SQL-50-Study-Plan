/* Write your T-SQL query statement below */
select name results from (select top 1 m.user_id user_id,u.name name,count(m.user_id) result
from MovieRating m join Users u on m.user_id = u.user_id
group by m.user_id,u.name order by result desc,name ) x
union all
select title from (select top 1 m.movie_id movie_id ,s.title title,avg(cast(rating as float)) mea
from MovieRating m join Movies s on m.movie_id = s.movie_id
where MONTH(m.created_at) = 2 AND YEAR(m.created_at) = 2020
group by m.movie_id,s.title order by mea desc,title) y;