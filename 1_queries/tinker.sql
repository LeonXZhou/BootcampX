-- select * from students;

-- select * from cohorts;


SELECT *
FROM students
INNER JOIN cohorts on cohort_id = cohorts.id
where students.start_date != cohorts.start_date



