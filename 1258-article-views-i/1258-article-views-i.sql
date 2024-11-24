/* Write your T-SQL query statement below */
SELECT 
    DISTINCT AUTHOR_ID AS ID  
FROM 
    VIEWS  
WHERE 
    AUTHOR_ID = VIEWER_ID  
ORDER BY 
    ID;