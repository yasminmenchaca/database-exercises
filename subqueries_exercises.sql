USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery. -- 69 Rows

SELECT concat(first_name, ' ', last_name, ' ', hire_date) AS 'Name'
from employees
where hire_date = (select hire_date from employees where emp_no = 101010);

# Find all the titles held by all employees with the first name "Aamod"

select distinct title
from titles
where emp_no IN (
    select emp_no
    from employees
    where first_name = 'Aamod'
);

# Find all the current department managers that are female.

select first_name, last_name
from employees
where emp_no IN (
    select emp_no
    from dept_manager
    where to_date > NOW()
)
  AND gender = 'F';

# Find all the department names that currently have female managers.
#
# Expected Output
# +-----------------+
# | dept_name       |
# +-----------------+
# | Development     |
# | Finance         |
# | Human Resources |
# | Research        |
# +-----------------+

SELECT dept_name
from departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        from employees
        where gender = 'F'
          and to_date > NOW()
    )
);

#     Find the first and last name of the employee with the highest salary.
#
#     Expected Output
#     +------------+-----------+
#     | first_name | last_name |
#     +------------+-----------+
#     | Tokuyasu   | Pesch     |
#     +------------+-----------+

SELECT first_name, last_name
FROM employees
WHERE emp_no = (
    SELECT emp_no
    FROM salaries
    ORDER BY salary DESC
    limit 1
);