-- Question 10: Write a query to get the number of jobs available in the employees table.
SELECT COUNT(DISTINCT job_id) AS number_of_jobs FROM employees;
