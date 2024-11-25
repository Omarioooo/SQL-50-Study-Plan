/* Write your T-SQL query statement below */
SELECT 
    CASE
    WHEN Id%2=1 AND id+1 NOT IN(SELECT id FROM Seat) THEN id
    WHEN id%2=1 THEN id+1
    ELSE id-1
    END AS id,
    student
FROM Seat
ORDER BY id;  