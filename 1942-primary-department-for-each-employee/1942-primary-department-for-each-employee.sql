/* Write your T-SQL query statement below */
SELECT employee_id,
       department_id            
FROM (SELECT *,
            COUNT(department_id) OVER(PARTITION BY employee_id) AS C
        FROM Employee
    ) TABLE_COUNT     
WHERE C = 1 OR primary_flag = 'Y' ;      