USE employees;

#Find all the employees with the same hire date as employee 101010 using a sub-query.
#69 Rows

SELECT hire_date FROM employees
WHERE emp_no = '101010';


SELECT first_name, last_name
FROM employees AS e
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = '101010'
);

#Find all the titles held by all employees with the first name Aamod.
#314 total titles, 6 unique titles

SELECT title from titles
WHERE emp_no IN (SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod');

#Find all the current department managers that are female.

SELECT first_name, last_name from employees
WHERE gender ='f' AND emp_no IN(
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > NOW()
  );

#Find all the department names that currently have female managers.
SELECT dept_name FROM departments
WHERE dept_no IN(
  SELECT dept_no
  FROM dept_manager
    JOIN employees e ON dept_manager.emp_no = e.emp_no
  WHERE to_date > now()
  AND e.gender = 'F'
  );

#Find the first and last name of the employee with the highest salary.


#using the MAX function
SELECT first_name, last_name FROM employees
WHERE emp_no IN(
  SELECT emp_no
  FROM salaries
  WHERE salary = (select max(salary) FROM salaries)
  );

#using ORDER BY
SELECT first_name, last_name FROM employees
WHERE emp_no = (
  SELECT emp_no
  FROM salaries
  order by salary desc
  limit 1
  )