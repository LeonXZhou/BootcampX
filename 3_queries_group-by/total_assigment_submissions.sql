SELECT cohorts.name, count(assignment_submissions.id) from students
INNER JOIN cohorts ON cohort_id = cohorts.id
INNER JOIN assignment_submissions on student_id = students.id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.id) desc;
