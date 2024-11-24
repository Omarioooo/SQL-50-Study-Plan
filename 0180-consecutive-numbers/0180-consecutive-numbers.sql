/* Write your T-SQL query statement below */


select distinct a.num as ConsecutiveNums from Logs a, Logs b, Logs c
where a.num = b.num and b.num = c.num and a.id = b.id+1 and b.id = c.id+1