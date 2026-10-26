-- Question 17: Write a query to check if the first_name fields of the employees table contains numbers.
SELECT first_name FROM employees WHERE first_name REGEXP '[0-9]';
