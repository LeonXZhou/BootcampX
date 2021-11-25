const { Pool } = require('pg');
const args = process.argv.slice(2);
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
args[0] = ``+args[0]+`%`;
console.log(args[0])
pool.query(`
SELECT students.id as id, students.name as name, cohorts.name as cohort_name
FROM students
INNER JOIN cohorts on cohorts.id = students.cohort_id
WHERE cohorts.name like $1::text
LIMIT $2;
`,args)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`);
  })
});