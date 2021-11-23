SELECT DISTINCT teachers.name as teacher, 
  cohorts.name as cohort,
  count(assistance_requests.id) as total_assistances
FROM assistance_requests
INNER JOIN students ON assistance_requests.student_id = students.id
INNER JOIN cohorts ON cohorts.id = students.cohort_id
INNER JOIN teachers ON assistance_requests.teacher_id = teachers.id
WHERE cohorts.name = 'JUL02'
group by teachers.name, cohorts.name
ORDER BY total_assistances desc;
