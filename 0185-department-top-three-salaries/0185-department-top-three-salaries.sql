/* Write your T-SQL query statement below */
WITH Company AS (
    SELECT 
        e.id, 
        e.name, 
        e.salary, 
        e.departmentId, 
        d.name AS departmentName
    FROM 
        Employee e
    JOIN 
        Department d 
    ON 
        e.departmentId = d.id
)
SELECT departmentName Department,
       name Employee,
       salary Salary
FROM (
    SELECT *,
        DENSE_RANK() OVER(PARTITION BY departmentId  ORDER BY salary desc) rnk
    FROM Company   
) t
WHERE t.rnk in (1,2,3)
ORDER by t.departmentName;