SELECT students.name, 
  avg(assignment_submissions.duration) as average_assignment_duration ,
  avg(assignments.duration) as average_estimated_duration
FROM students
INNER JOIN assignment_submissions ON student_id = students.id
INNER JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date IS NULL 
GROUP BY students.name
having avg(assignment_submissions.duration) <avg(assignments.duration) 
ORDER BY avg(assignment_submissions.duration) ;


