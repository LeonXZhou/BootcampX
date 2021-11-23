SELECT assignments.day AS day, 
  COUNT(assignments.id) AS number_of_assignments,
  SUM(assignments.duration) AS total_requests
FROM assignments 
GROUP BY assignments.day
ORDER BY day;
