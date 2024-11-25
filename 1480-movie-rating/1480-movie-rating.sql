/* Write your T-SQL query statement below */
WITH user_with_max_ratings AS (
    SELECT TOP (1) 
        u.name, 
        movie_count = COUNT(DISTINCT mr.movie_id)
    FROM 
        MovieRating mr
    JOIN
        Users u 
        ON mr.user_id = u.user_id
    GROUP BY
        mr.user_id,
        u.name
    ORDER BY
        movie_count DESC,
        u.name
),
movie_with_max_avg_rating AS (
    SELECT TOP (1) 
        m.title AS name,  -- Ensure the column name matches with the first CTE
        AVG(CAST(mr.rating AS FLOAT)) AS avg_rating
    FROM 
        MovieRating mr
    JOIN
        Movies m 
        ON mr.movie_id = m.movie_id
    WHERE
        MONTH(mr.created_at) = 2 
        AND YEAR(mr.created_at) = 2020
    GROUP BY
        m.movie_id,
        m.title
    ORDER BY
        avg_rating DESC,
        m.title
)

SELECT
    name AS results
FROM 
    user_with_max_ratings

UNION ALL

SELECT
    name AS results
FROM
    movie_with_max_avg_rating;
