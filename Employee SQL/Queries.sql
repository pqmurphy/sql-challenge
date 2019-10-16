-- Select employees and salary
SELECT i.emp_no, i.first_name, i.last_name, i.gender, f.salary FROM employees i
JOIN salaries f
ON (i.emp_no = f.emp_no);

-- Find employees hired in 1986
SELECT emp_no, first_name, last_name, gender, hire_date FROM employees 
WHERE hire_date between '1986-01-01' and '1986-12-31';

-- Managers and departments
SELECT e.emp_no, e.first_name, e.last_name, m.dept_name
FROM employees AS e
JOIN dept_manager AS d
ON (e.emp_no = d.emp_no)
  JOIN departments AS m
  ON (d.dept_no = m.dept_no);

-- Employees and departments
SELECT e.emp_no, e.first_name, e.last_name, m.dept_name
FROM employees AS e
JOIN dept_emp AS d
ON (e.emp_no = d.emp_no)
  JOIN departments AS m
  ON (d.dept_no = m.dept_no);
  
-- Herculean feat
SELECT first_name, last_name FROM employees 
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

-- Sales Employees
SELECT e.emp_no, e.first_name, e.last_name, m.dept_name
FROM employees AS e
JOIN dept_emp AS d
ON (e.emp_no = d.emp_no)
  JOIN departments AS m
  ON (d.dept_no = m.dept_no) WHERE dept_name = 'Sales';
  
-- Sales & Development Employees
SELECT e.emp_no, e.first_name, e.last_name, m.dept_name
FROM employees AS e
JOIN dept_emp AS d
ON (e.emp_no = d.emp_no)
  JOIN departments AS m
  ON (d.dept_no = m.dept_no) WHERE dept_name = 'Sales' or dept_name = 'Development';

-- Last Name Count
SELECT last_name, COUNT(last_name) as "Last Name Count" FROM employees 
GROUP BY last_name
ORDER BY "Last Name Count" DESC;


