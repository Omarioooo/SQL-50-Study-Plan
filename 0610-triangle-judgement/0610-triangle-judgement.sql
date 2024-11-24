/* Write your T-SQL query statement below */
SELECT
    *,
    IIF(x+y > z and y+z >x and x+z > y,'Yes','No') as triangle
FROM
    Triangle