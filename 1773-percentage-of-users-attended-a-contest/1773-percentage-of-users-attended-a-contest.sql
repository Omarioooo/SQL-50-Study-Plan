/* Write your T-SQL query statement below */
SELECT 
    r.contest_id, 
    ROUND(COUNT(r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM
    Register r
JOIN
    Users u
    ON
    u.user_id = r.user_id
GROUP BY
    r.contest_id
ORDER BY
    percentage DESC,
    r.contest_id ASC;
