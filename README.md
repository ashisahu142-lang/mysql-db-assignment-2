# MySQL DB Select Query Assignment MCA 3rd Semester

## Objective
This repository solves the 19 SELECT-query questions in the original MySQL DBMS Assignment 2 document for the HR sample database. The source Word document is preserved in `assignment/original-assignment.docx`.

## Topics covered
Column aliases, distinct values, sorting, calculated columns, aggregate functions, row counts, distinct job IDs, case conversion, substring extraction, arithmetic, string concatenation, whitespace trimming, string length, regular-expression matching, row limits, and rounding annual salary into monthly salary.

## Prerequisites
- MySQL 8.0 or compatible MySQL server and command-line client.
- Permission to create the `assignment2` database.

## Run the scripts
Run the setup once, then execute the question scripts in numeric order. On macOS/Linux:

```sh
mysql -u your_user -p < sql/00-setup.sql
for f in sql/[0-9][0-9]-question.sql; do mysql -u your_user -p assignment2 < "$f"; done
```

On Windows PowerShell:

```powershell
Get-Content sql/00-setup.sql | mysql -u your_user -p
Get-ChildItem sql\[0-9][0-9]-question.sql | Sort-Object Name | ForEach-Object { Get-Content $_.FullName | mysql -u your_user -p assignment2 }
```

`00-setup.sql` creates the database and an `employees` table using the columns shown in the source HR schema diagram. It inserts illustrative sample records, including the example names Ellen Abel and Sundar Ande. The samples are not asserted to be the official HR dataset. The setup is non-destructive: it does not drop an existing table, uses `CREATE TABLE IF NOT EXISTS`, and skips duplicate sample employee IDs with `INSERT IGNORE`.

## Question-wise solution index

| Question | Script | Solution |
|---|---|---|
| 1 | `sql/01-question.sql` | First and last name aliases |
| 2 | `sql/02-question.sql` | Unique department IDs |
| 3 | `sql/03-question.sql` | All employee columns sorted by first name descending |
| 4 | `sql/04-question.sql` | Names, salary, and PF at 15% |
| 5 | `sql/05-question.sql` | Employee ID, names, and salary sorted ascending by salary |
| 6 | `sql/06-question.sql` | Total salaries payable |
| 7 | `sql/07-question.sql` | Maximum and minimum salary |
| 8 | `sql/08-question.sql` | Average salary and employee count |
| 9 | `sql/09-question.sql` | Number of employees |
| 10 | `sql/10-question.sql` | Number of distinct jobs |
| 11 | `sql/11-question.sql` | First names in uppercase |
| 12 | `sql/12-question.sql` | First three characters of each first name |
| 13 | `sql/13-question.sql` | Calculation `171 * 214 + 625` |
| 14 | `sql/14-question.sql` | Concatenated full employee names |
| 15 | `sql/15-question.sql` | First names trimmed on both sides |
| 16 | `sql/16-question.sql` | Character length of each full name |
| 17 | `sql/17-question.sql` | First names containing digits |
| 18 | `sql/18-question.sql` | First ten employee rows |
| 19 | `sql/19-question.sql` | Monthly salary rounded to two decimal places |

## Assumptions and validation
Question 10's “number of jobs available” is interpreted as the number of distinct `job_id` values represented in `employees`. Question 17 returns the names that contain a digit, using MySQL `REGEXP '[0-9]'`. Question 18 does not specify an ordering or table, so this solution applies it to `employees` and orders by `employee_id` to make the first ten records reproducible. Question 19 divides the stated annual salary by 12 before rounding to two decimal places.

The original source says “More to Come!” after Question 19; no additional question is specified, so none was added. Static review was performed. MySQL was not installed or available on the command path in the preparation environment, so runtime execution was not performed.

## Educational use
These solutions are provided for educational purposes. Review the queries and adapt them to your instructor's database and requirements.
