select SUM(assignment_submissions.duration) 
from assignment_submissions
inner join students on students.id = student_id
inner join cohorts on cohort_id = cohorts.id
where cohorts.name = 'FEB12';