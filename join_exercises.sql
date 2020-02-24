USE employees;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
where to_date > NOW()
order by dept_name;

# Find the name of all departments currently managed by women.

SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees AS e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
WHERE to_date > NOW()
  and e.gender = 'f'
order by dept_name;

# Find the current titles of employees currently working in the Customer Service department.

SELECT t.title  AS 'Title',
       COUNT(*) AS 'Count'
FROM titles as t
         JOIN employees e on t.emp_no = e.emp_no
         JOIN dept_emp de on e.emp_no = de.emp_no
WHERE t.to_date > NOW()
  AND de.to_date > NOW()
  and dept_no = 'd009'
group by t.title;

# Find the current salary of all current managers.

SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Name',
       employees.salaries.salary              AS 'Salary'
FROM employees AS e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN dept_emp de on e.emp_no = de.emp_no
         JOIN salaries on dm.emp_no = salaries.emp_no
         JOIN departments as d ON d.dept_no = de.dept_no
WHERE dm.to_date > NOW()
  and salaries.to_date > NOW()
ORDER BY d.dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name.

SELECT concat(employees.first_name, ' ', employees.last_name) AS 'Employee Name',
       d.dept_name                                            AS 'Department Name',
       concat(managers.first_name, ' ', managers.last_name)   AS 'Manager Name'
FROM employees
         JOIN dept_emp AS de
              on de.emp_no = employees.emp_no
         JOIN departments AS d
              on de.dept_no = d.dept_no
         JOIN dept_manager AS m
              on m.dept_no = d.dept_no
         JOIN employees AS managers
              ON m.emp_no = managers.emp_no
WHERE de.to_date > NOW()
  AND m.to_date > NOW();