SELECT students.name, avg(duration) FROM students
INNER JOIN assignment_submissions ON student_id = students.id
WHERE students.end_date IS NULL 
GROUP BY students.name
ORDER BY avg(duration) DESC;

se