SELECT cohorts.name, count(students.id)from students
INNER JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.id) >= 18
ORDER BY count(students.id);