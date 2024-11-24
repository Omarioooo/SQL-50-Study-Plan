/* Write your T-SQL query statement below */
SELECT
    *,
    IIF(x+y > z AND y+z >x AND x+z > y,'Yes','No') AS triangle
FROM
    Triangle