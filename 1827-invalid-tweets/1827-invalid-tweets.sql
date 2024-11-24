/* Write your T-SQL query statement below */
SELECT 
    tweet_id  
FROM 
    tweets  
WHERE 
    LEN(content) > 15;  
