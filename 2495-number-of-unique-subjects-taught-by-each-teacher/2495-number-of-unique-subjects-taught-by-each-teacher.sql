/* Write your T-SQL query statement below */
SELECT 
    teacher_id,
    COUNT(DISTINCT subject_id) cnt
FROM
    Teacher
GROUP by 
    teacher_id ;