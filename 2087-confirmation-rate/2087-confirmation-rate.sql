SELECT 
    s.user_id, 
    ROUND(
        ISNULL(
            SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) * 1.0 / 
            NULLIF(COUNT(c.user_id), 0), 0)
        ,2) AS confirmation_rate  
FROM 
    Signups s  
LEFT JOIN 
    Confirmations c  
ON 
    s.user_id = c.user_id  
GROUP BY 
    s.user_id;
  