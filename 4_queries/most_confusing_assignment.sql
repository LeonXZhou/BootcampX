SELECT assignments.id AS id, 
  assignments.name AS name, 
  assignments.day AS day, 
  assignments.chapter AS chapter,
  COUNT(assistance_requests.id) AS total_requests
FROM assistance_requests
INNER JOIN assignments ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id, assignments.name, assignments.day, assignments.chapter
ORDER BY total_requests DESC;
