SELECT DISTINCT teachers.name, cohorts.name
FROM assistance_requests
INNER JOIN students ON assistance_requests.student_id = students.id
INNER JOIN cohorts ON cohorts.id = students.cohort_id
INNER JOIN teachers ON assistance_requests.teacher_id = teachers.id
WHERE cohorts.name = 'JUL02'
ORDER BY teachers.name;