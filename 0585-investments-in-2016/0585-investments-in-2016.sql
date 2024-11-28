/* Write your T-SQL query statement below */
SELECT 
    ROUND(SUM(i1.tiv_2016), 2) AS tiv_2016
FROM
    Insurance i1
WHERE
    i1.tiv_2015 IN (
        SELECT tiv_2015
        FROM Insurance
        GROUP BY tiv_2015
        HAVING COUNT(*) > 1
    )
    AND NOT EXISTS (
        SELECT 1
        FROM Insurance i2
        WHERE i1.lat = i2.lat
          AND i1.lon = i2.lon
        GROUP BY i2.lat, i2.lon
        HAVING COUNT(*) > 1
    );
