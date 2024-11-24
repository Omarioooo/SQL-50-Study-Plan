/* Write your T-SQL query statement below */
SELECT 
    p.product_id,
    ROUND(
        SUM(price * ISNULL(units, 0)) * 1.00 / ISNULL(SUM(units), 1), 
        2
    ) AS average_price
FROM 
    prices p
LEFT JOIN 
    UnitsSold u 
    ON u.product_id = p.product_id 
    AND purchase_date BETWEEN start_date AND end_date
GROUP BY 
    p.product_id;
