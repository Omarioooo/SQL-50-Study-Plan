/* Write your T-SQL query statement below */
WITH uniques AS (
    SELECT DISTINCT * FROM Activities
)

SELECT
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    STRING_AGG(product, ',') WITHIN GROUP (ORDER BY product) AS products
FROM
    uniques
GROUP BY 
    sell_date
ORDER BY 
    sell_date;

