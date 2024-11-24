# Write your MySQL query statement below
SELECT S.student_id , S.student_name , Sb.subject_name , COUNT(E.student_id) attended_exams
FROM Students S
CROSS JOIN Subjects Sb 
LEFT JOIN Examinations E ON S.student_id = E.student_id AND Sb.subject_name = E.subject_name 
GROUP BY S.student_id , S.student_name , Sb.subject_name 
ORDER BY S.student_id , Sb.subject_name;