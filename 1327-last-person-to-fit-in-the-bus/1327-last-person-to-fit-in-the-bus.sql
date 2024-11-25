/* Write your T-SQL query statement below */
WITH newTable AS (
    SELECT 
        *,
        'Total_Weight' = SUM(Weight) OVER(ORDER BY turn) 
    FROM 
        Queue     
)
SELECT TOP(1)
    person_name
FROM
    newTable
WHERE
    Total_Weight <=1000
ORDER BY turn DESC