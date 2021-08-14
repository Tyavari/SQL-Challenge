--Question 1
--Listing Employee #, Last Name, First Name, Sex and Salary
SELECT e.emp_no, e.last_name, e.first_name, 
		e.sex, s.salary
FROM salaries as s
INNER JOIN employees as e
ON e.emp_no = s.emp_no;

--Question 2
-- Listing First Name, Last Name, Hire Date for employees hired in 1986
SELECT  first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';


--Question 3
-- List the manager's department number,department name, 
--the manager's employee number, last name, first name
SELECT d.dept_no, d.dept_name, dm.emp_no,
		 e.first_name,e.last_name
FROM dept_manager as dm
INNER JOIN departments as d ON d.dept_no = dm.dept_no
INNER JOIN employees as e ON e.emp_no = dm.emp_no;



