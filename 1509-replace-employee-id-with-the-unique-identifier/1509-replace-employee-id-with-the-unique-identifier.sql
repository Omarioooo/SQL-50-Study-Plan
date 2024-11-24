/* Write your T-SQL query statement below */
SELECT 
    e1.unique_id, 
    e2.name  
FROM 
    EmployeeUNI e1  
RIGHT JOIN 
    Employees e2  
ON 
    e1.id = e2.id;  
