/* Write your T-SQL query statement below */
SELECT 
    e1.employee_id
FROM
    Employees e1
WHERE
    e1.salary < 30000 
    AND
    e1.manager_id NOT IN (SELECT employee_id FROM Employees )
ORDER BY
    e1.employee_id ; 