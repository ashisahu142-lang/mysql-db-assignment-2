-- Question 16: Write a query to get the length of the employee names (first_name, last_name) from employees table.
SELECT first_name, last_name, CHAR_LENGTH(first_name) AS first_name_length, CHAR_LENGTH(last_name) AS last_name_length, CHAR_LENGTH(CONCAT(first_name, ' ', last_name)) AS full_name_length FROM employees;
