USE employees;

SELECT dept_name FROM departments;

SELECT emp_no FROM dept_manager;




SELECT first_name FROM employees WHERE emp_no = '110022';

SELECT dept_name FROM departments WHERE dept_no = 'd001';

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS manager
FROM employees as e
            JOIN dept_manager as dm
                 ON dm.emp_no = e.emp_no #combines dept_manager table with employees table using the common employee number.
            JOIN departments as d
                 ON d.dept_no = dm.dept_no #combines departments table to employees and dept_manager table using the department number from dept_manager and departments table
WHERE dm.to_date > CURDATE()
order by d.dept_name;


SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS manager, e.gender
FROM employees as e
            JOIN dept_manager as dm
                 ON dm.emp_no = e.emp_no
            JOIN departments as d
                 ON d.dept_no = dm.dept_no
WHERE e.gender = 'f' AND dm.to_date > curdate();



SELECT t.title, COUNT(t.title) AS count
FROM titles as t
            JOIN dept_emp as de
                 ON de.emp_no = t.emp_no
           WHERE t.to_date > curdate()
             AND de.dept_no = 'd009'
             AND de.to_date > curdate()
GROUP BY t.title;

SELECT dept_name FROM departments WHERE dept_no = 'd001';

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS manager, s.salary
FROM employees as e
       JOIN dept_manager as dm
            ON dm.emp_no = e.emp_no #combines dept_manager table with employees table using the common employee number.
       JOIN departments as d
            ON d.dept_no = dm.dept_no #combines departments table to employees and dept_manager table using the department number from dept_manager and departments table
      JOIN salaries AS s on e.emp_no = s.emp_no
WHERE dm.to_date > CURDATE() AND s.to_date > CURDATE()
order by d.dept_name;



SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name,
       CONCAT(managers.first_name, ' ', managers.last_name) AS Manager
FROM employees AS e
  JOIN dept_emp AS de
    ON e.emp_no = de.emp_no
  JOIN departments AS d
    ON de.dept_no = d.dept_no
  JOIN dept_manager AS dm # THIS GETS THE MANAGER NAMES
    ON dm.dept_no = de.dept_no
  JOIN employees managers
    ON managers.emp_no = dm.emp_no # needed a way to compare the IDs between employees and managers
WHERE dm.to_date > CURDATE()
  AND de.to_date > curdate()
ORDER BY d.dept_name;








