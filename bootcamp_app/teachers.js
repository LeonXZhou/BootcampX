const { Pool } = require('pg');
const args = process.argv.slice(2);
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});


pool.query(`SELECT DISTINCT teachers.name as name, cohorts.name as cohort_name
FROM assistance_requests
INNER JOIN students ON assistance_requests.student_id = students.id
INNER JOIN cohorts ON cohorts.id = students.cohort_id
INNER JOIN teachers ON assistance_requests.teacher_id = teachers.id
WHERE cohorts.name = $1
ORDER BY teachers.name; `,args)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort_name}: ${user.name}`);
  })
});