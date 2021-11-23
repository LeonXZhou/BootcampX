SELECT COUNT(assistance_requests.id), students.name
FROM assistance_requests
INNER JOIN students ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;
