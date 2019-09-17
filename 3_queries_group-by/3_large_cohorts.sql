SELECT cohorts.name as cohort_name, COUNT(students.*) as student_count
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING COUNT(students.*) >= 18
ORDER BY student_count;