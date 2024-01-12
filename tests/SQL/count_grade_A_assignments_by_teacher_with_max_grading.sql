-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
SELECT t.teacher_id, t.teacher_name, COUNT(g.grade) AS grade_a_count
FROM teachers t
JOIN assignments a ON t.teacher_id = a.teacher_id
JOIN grades g ON a.assignment_id = g.assignment_id
WHERE g.grade = 'A'
GROUP BY t.teacher_id, t.teacher_name
ORDER BY grade_a_count DESC