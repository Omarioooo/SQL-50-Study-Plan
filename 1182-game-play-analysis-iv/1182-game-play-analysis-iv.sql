/* Write your T-SQL query statement below */
SELECT
    ROUND(COUNT(DISTINCT nt.player_id) * 1.00 / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) fraction
FROM
    (
        SELECT player_id, DATEADD(DAY, 1, MIN(event_date)) AS next_date
        FROM Activity
        GROUP BY player_id
    ) AS nt
INNER JOIN
       Activity a
ON
       nt.player_id = a.player_id
       AND nt.next_date = a.event_date;
