/* Write your T-SQL query statement below */
SELECT
    user_id,
    name = UPPER(LEFT(name, 1)) + LOWER(SUBSTRING(name, 2, LEN(name) -1 ))
FROM 
    Users
ORDER BY
    user_id;
