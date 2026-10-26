# Database notes

## Source and scope
The original Word assignment's final page includes an HR database structure diagram. Its entities and columns are summarized below to document the source schema. The questions use the `employees` table; therefore `sql/00-setup.sql` creates only that table with all employee columns shown in the diagram. Related tables are described here but are not created because no question queries them.

## Tables shown in the source diagram

| Table | Columns shown | Notes |
|---|---|---|
| `regions` | `region_id` NUMBER (primary key), `region_name` VARCHAR2(25) | Parent of `countries`. |
| `countries` | `country_id` CHAR(2) (primary key), `country_name` VARCHAR2(40), `region_id` NUMBER | `region_id` refers to `regions`. |
| `locations` | `location_id` NUMBER (primary key), `street_address` VARCHAR2(25), `postal_code` VARCHAR2(12), `city` VARCHAR2(30), `state_province` VARCHAR2(12), `country_id` CHAR(2) | `country_id` refers to `countries`. |
| `departments` | `department_id` NUMBER (primary key), `department_name` VARCHAR2(30), `manager_id` NUMBER, `location_id` NUMBER | `location_id` refers to `locations`; `manager_id` is an employee reference. |
| `employees` | `employee_id` NUMBER (primary key), `first_name` VARCHAR2(20), `last_name` VARCHAR2(25), `email` VARCHAR2(25), `phone_number` VARCHAR2(20), `hire_date` DATE, `job_id` VARCHAR2(10), `salary` NUMBER, `commission_pct` NUMBER, `manager_id` NUMBER, `department_id` NUMBER | `manager_id` refers to another employee; `department_id` refers to `departments`. This is the table queried in all exercises except the standalone arithmetic query. |
| `jobs` | `job_id` VARCHAR2(10) (primary key), `job_title` VARCHAR2(35), `min_salary` NUMBER, `max_salary` NUMBER | `employees.job_id` refers to a job identifier. |
| `job_history` | `employee_id` NUMBER, `start_date` DATE, `end_date` DATE, `job_id` VARCHAR2(10), `department_id` NUMBER | Diagram shows a composite key for `employee_id` and `start_date`; employee, job, and department references connect to their corresponding tables. |
| `job_grades` | `grade_level` VARCHAR2(2) (primary key), `lowest_sal` NUMBER, `highest_sal` NUMBER | Salary grade ranges. |

The source diagram uses Oracle-style labels such as `NUMBER` and `VARCHAR2`. The solution setup uses equivalent MySQL types (`INT`, `DECIMAL`, `VARCHAR`, and `DATE`) for the columns needed by the exercises. It does not claim to reproduce all HR tables or the official Oracle sample data.

## Exercise-specific data choices
The setup inserts 11 illustrative employees so Question 18 can return ten while the table has another row. It includes multiple departments and job IDs for distinct-value queries, example names printed in the assignment, salary values for calculations, and `John3` so the digit search in Question 17 has a matching row. The records are for demonstration only.
