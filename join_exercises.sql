USE employees;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE to_date > NOW()
ORDER BY dept_name;

# Find the name of all departments currently managed by women

SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE to_date > NOW()
  AND e.gender = 'F'
ORDER BY dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS 'Title', COUNT(*) AS 'Count'
FROM titles AS t
         JOIN employees e ON
    t.emp_no = e.emp_no
         JOIN dept_emp AS de ON
    e.emp_no = de.emp_no
WHERE t.to_date > NOW()
  AND de.to_date > NOW()
  AND dept_no = 'd009'
GROUP BY t.title;

# Find the current salary of all current managers.

