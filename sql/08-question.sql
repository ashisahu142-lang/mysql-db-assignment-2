-- Question 08: Write a query to get the average salary and number of employees in the employees table.
SELECT AVG(salary) AS average_salary, COUNT(*) AS employee_count FROM employees;
