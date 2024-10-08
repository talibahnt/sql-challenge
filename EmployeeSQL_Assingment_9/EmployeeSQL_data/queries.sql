SELECT employees.emp_no,last_name,first_name,sex,salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';

SELECT dept_manager.dept_no,departments.dept_name,
employees.emp_no,employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments
ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees
ON dept_manager.emp_no = employees.emp_no;

SELECT dept_emp.dept_no,dept_emp.emp_no,
employees.last_name,employees.first_name, 
departments.dept_name
FROM dept_emp
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees
ON dept_emp.emp_no = employees.emp_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT dept_emp.dept_no,dept_emp.emp_no,
employees.last_name,employees.first_name, 
departments.dept_name
FROM dept_emp
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees
ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales';

SELECT dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name IN ('Sales', 'Development');

SELECT last_name, COUNT(*) as frequency_count
FROM employees
GROUP BY last_name
ORDER BY frequency_count DESC;
