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