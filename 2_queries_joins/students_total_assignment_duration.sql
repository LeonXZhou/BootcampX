select SUM(assignments.duration) as total_duration
from students
inner join assignment_submissions on students.id = student_id
inner join assignments on assignment_submissions.assignment_id = assignments.id
where students.name = 'Ibrahim Schimmel';




select SUM(assignments.duration-assignment_submissions.duration) 
from students
inner join assignment_submissions on students.id = student_id
inner join assignments on assignment_submissions.assignment_id = assignments.id
where students.name = 'Ibrahim Schimmel' and assignments.duration != assignment_submissions.duration;


