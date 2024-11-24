/* Write your T-SQL query statement below */
SELECT 
    name = e.name, 
    b.bonus  
FROM 
    employee e  
LEFT JOIN 
    bonus b  
ON 
    e.empId = b.empId  
WHERE 
    COALESCE(b.bonus, 0) < 1000;  
