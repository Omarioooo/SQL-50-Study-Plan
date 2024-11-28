/* Write your T-SQL query statement below */
WITH ids (id) AS (
    SELECT requester_id 
    FROM RequestAccepted
    UNION 
    SELECT accepter_id
    FROM RequestAccepted
)
SELECT TOP(1)
   ids.id,
   COUNT(*) num
FROM RequestAccepted f
join ids	
ON ids.id = f.accepter_id 
OR ids.id = f.requester_id
GROUP BY ids.id
ORDER BY num desc


