# Write your MySQL query statement below
select if(count(num)>1,null,num) num
FROM MyNumbers
GROUP BY num
ORDER BY num DESC
LIMIT 1;

