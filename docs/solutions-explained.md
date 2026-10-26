# Assignment 2 solutions explained

This guide explains the answers to the questions in the original document. It supplements the original and does not replace it; see `assignment/original-assignment.docx` for the complete assignment and its HR schema diagram.

1. **Name aliases:** `AS` gives the two name columns the requested display headings. Backticks let MySQL accept spaces in those headings.
2. **Unique department IDs:** `DISTINCT` returns each department ID once.
3. **Employee details in descending name order:** `SELECT *` includes every employee column. `ORDER BY first_name DESC` sorts from Z toward A.
4. **PF:** Multiplying salary by `0.15` calculates fifteen percent for each employee.
5. **Salary order:** The selected ID, names, and salary are sorted from the lowest salary to the highest.
6. **Total salary:** `SUM(salary)` adds the salary values.
7. **Salary extremes:** `MAX` and `MIN` return the highest and lowest salary.
8. **Average and count:** `AVG(salary)` calculates the mean and `COUNT(*)` counts employee rows.
9. **Employee count:** `COUNT(*)` returns the number of employee records.
10. **Jobs:** The solution counts distinct `job_id` values, interpreting “number of jobs available” as different job types represented in the employees table.
11. **Uppercase:** `UPPER` converts each first name to uppercase.
12. **First three characters:** `LEFT(first_name, 3)` returns up to the first three characters.
13. **Arithmetic:** The scalar `SELECT` evaluates the requested expression without reading a table.
14. **Full names:** `CONCAT` joins first and last names with a space.
15. **Trim spaces:** `TRIM` removes leading and trailing whitespace from each first name.
16. **Name lengths:** The query reports character lengths for first name and last name separately, plus the full name including the joining space. This covers both name fields named in the prompt.
17. **Digits in a first name:** MySQL `REGEXP '[0-9]'` finds names containing at least one digit. The sample setup includes `John3` so this query has an example match.
18. **First ten records:** The prompt does not name a table; the exercise context indicates `employees`. Ordering by `employee_id` makes “first ten” reproducible.
19. **Monthly salary:** The source explicitly says salary is annual. The query divides it by 12 and rounds to two decimal places.

The setup inserts illustrative data and is not the official HR sample database. The assumptions for questions 10 and 18 are also recorded in the README.
