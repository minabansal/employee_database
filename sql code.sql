--List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary

FROM employees e 

LEFT JOIN salaries s
	ON e.emp_no = s.emp_no


--List employees who were hired in 1986.

SELECT last_name, first_name
FROM employees
WHERE DATE(hire_date) >= 1986-01-01 
	AND DATE(hire_date) <= 1986-12-31

SELECT * FROM employees

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date

FROM dept_manager dm

LEFT JOIN employees e
	ON e.emp_no = dm.emp_no
	
LEFT JOIN departments d 
	ON d.dept_no = dm.dept_no


--List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name

FROM dept_emp de 

LEFT JOIN departments d 
	ON d.dept_no = de.dept_no

LEFT JOIN employees e 
	ON e.emp_no = de.emp_no
ORDER BY 4

--List all employees whose first name is "Hercules" and last names begin with "B."

SELECT * FROM employees

WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name

FROM dept_emp de 

LEFT JOIN departments d 
	ON d.dept_no = de.dept_no

LEFT JOIN employees e 
	ON e.emp_no = de.emp_no

WHERE d.dept_name = 'Sales'
ORDER BY 1


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name

FROM dept_emp de 

LEFT JOIN departments d 
	ON d.dept_no = de.dept_no

LEFT JOIN employees e 
	ON e.emp_no = de.emp_no

WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY 4,2


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) FROM employees
GROUP BY 1
ORDER BY 2 DESC

