-- select * from students;

-- select * from cohorts;


SELECT name, email, phone, github, end_date
FROM students
WHERE github is NULL and end_date < NOW();



