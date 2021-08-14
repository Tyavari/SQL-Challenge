--Question 7
-- List all employees in the Sales and Development department
-- including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development'



--Question 8 
--In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.

SELECT last_name,
COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC



--WHO AM I? Search employee number 499942
SELECT 	* 
FROM employees 
WHERE emp_no = 499942