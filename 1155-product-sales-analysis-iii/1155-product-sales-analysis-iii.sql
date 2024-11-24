/* Write your T-SQL query statement below */
SELECT
    s.product_id,
    s.year AS first_year,
    s.quantity,
    s.price
FROM
    Sales s
INNER JOIN
    Product p ON s.product_id = p.product_id
INNER JOIN
    (
        SELECT
            product_id,
            MIN(year) AS first_year
        FROM
            Sales
        GROUP BY
            product_id
    ) s2 ON s.product_id = s2.product_id
          AND s.year = s2.first_year;
