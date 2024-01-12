-- Write query to get number of assignments for each state
SELECT state, COUNT(assignmens.id) AS assignment_count
FROM assignments
GROUP BY state;
