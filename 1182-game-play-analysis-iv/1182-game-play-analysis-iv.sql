/* Write your T-SQL query statement below */
select round(count(distinct f.player_id)*1.00/(select count(distinct player_id) from Activity) , 2) as fraction
from (
  select player_id, dateadd(day, 1, min(event_date)) as next_date
  from Activity
  group by player_id
) f
inner join Activity a
on f.player_id = a.player_id and f.next_date = a.event_date