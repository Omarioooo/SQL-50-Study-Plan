/* Write your T-SQL query statement below */
SELECT 
    id  
FROM 
    Weather w1  
WHERE 
    temperature > (  
        SELECT 
            temperature  
        FROM 
            Weather w2  
           WHERE 
            w1.recordDate = DATEADD(DAY, 1, w2.recordDate)  
    );  
