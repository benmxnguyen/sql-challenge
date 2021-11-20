-- Check to tables
SELECT * FROM departments;

--List the employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no = s.emp_no;

--List the first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%/%/1986';

--List the manager of each department as well as the department number, department name, the manager's employee number, last name, first name
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments AS d
INNER JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
INNER JOIN employees AS e ON dm.emp_no = e.emp_no

--List the employee number, employee first and last name, department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no

--List the first name, last name, and sex for employees who first name is "Hercules" and last names begin with "B"
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--List all Employees in the Sales department, including employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'

--List all employees in the Sales and Development departments, including employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'

--In descending order, list the frequency count of employee last names
SELECT last_name ,COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) desc