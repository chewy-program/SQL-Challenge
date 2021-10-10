-- List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;


-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date, extract(YEAR FROM e.hire_date) Hire_year 
FROM employees e
WHERE extract(YEAR FROM e.hire_date) = 1986;


-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT dm.dept_no, dm.emp_no, e.first_name, e.last_name
FROM dept_manager dm 
JOIN employees e ON e.emp_no = dm.emp_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE e.first_name = 'Hercules'
AND e.last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT de.emp_no, e.first_name, e.last_name, d.dept_name
FROM dept_emp de 
JOIN employees e ON e.emp_no = de.emp_no
JOIN departments d ON d.dept_no = de.dept_no 
WHERE d.dept_no = 'd007';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT de.emp_no, e.first_name, e.last_name, d.dept_name
FROM dept_emp de 
JOIN employees e ON e.emp_no = de.emp_no
JOIN departments d ON d.dept_no = de.dept_no 
WHERE d.dept_no = 'd007' OR d.dept_no = 'd005';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "Last Name Count"
FROM employees  
GROUP BY last_name 
ORDER BY "Last Name Count" DESC;