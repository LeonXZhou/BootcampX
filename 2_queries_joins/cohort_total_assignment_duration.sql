SELECT SUM(assignment_submissions.duration) 
FROM assignment_submissions
INNER JOIN students ON students.id = student_id
INNER JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'FEB12';