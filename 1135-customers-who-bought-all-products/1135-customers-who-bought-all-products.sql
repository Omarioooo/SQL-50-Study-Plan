/* Write your T-SQL query statement below */
SELECT c.customer_id AS customer_id
FROM Customer c
GROUP BY c.customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(product_key) FROM Product )
ORDER BY c.customer_id;
