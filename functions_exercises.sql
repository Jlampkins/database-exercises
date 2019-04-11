USE employees;

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%'
ORDER BY emp_no;

SELECT CONCAT(first_name, ' ', last_name), DATEDIFF(NOW(), hire_date)
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
ORDER BY hire_date;

SELECT CONCAT_WS(' ',first_name, last_name) AS 'full_name'
FROM employees WHERE last_name LIKE 'E%';