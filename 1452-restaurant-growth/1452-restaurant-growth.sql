/* Write your T-SQL query statement below */
WITH cte AS (
    SELECT
        visited_on,
        SUM(amount) AS sum_amount
    FROM
        Customer
    GROUP BY 
        visited_on                          
), cte2 AS (
    SELECT
        visited_on,
        SUM(sum_amount) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS amount,
        COUNT(*) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS count_rows
    FROM
        cte 
)
SELECT DISTINCT
    visited_on,
    amount,
    ROUND(amount / 7.0, 2) AS average_amount   
FROM cte2
WHERE count_rows >= 7;
