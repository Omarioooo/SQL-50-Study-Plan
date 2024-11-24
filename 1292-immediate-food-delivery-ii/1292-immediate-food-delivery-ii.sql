/* Write your T-SQL query statement below */
SELECT ROUND(SUM(t.immediate_percentage) * 100.00 / SUM(t.cnt), 2) immediate_percentage
FROM (
    SELECT CASE WHEN MIN(order_date) = MIN(customer_pref_delivery_date) THEN 1 ELSE 0 END immediate_percentage,
    COUNT(DISTINCT customer_id) as cnt 
    FROM Delivery
    GROUP BY customer_id ) t