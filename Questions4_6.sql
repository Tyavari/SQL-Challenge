--Questionn 4
--List the department of each employee with the following information:
--employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;



--Question 5
--List first name, last name, and sex for employees whose 
--first name is "Hercules" and last names begin with "B."
SELECT first_name,last_name, sex
FROM employees
Where first_name = 'Hercules'
AND last_name LIKE'Ba%'


--Question 6
-- List all employees in the Sales department
-- including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';
