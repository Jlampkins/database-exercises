USE join_test_db;

CREATE TABLE roles (
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     name VARCHAR(100) NOT NULL,
                     PRIMARY KEY (id)
);

CREATE TABLE users (
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     name VARCHAR(100) NOT NULL,
                     email VARCHAR(100) NOT NULL,
                     role_id INT UNSIGNED DEFAULT NULL,
                     PRIMARY KEY (id),
                     FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null),
('james', 'james@example.com', 2),
('bethany', 'bethany@example.com', 2),
('jeremy', 'jeremy@example.com', 2),
('adrien', 'adrien@example.com', null);

SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles on users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
       LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
       RIGHT JOIN roles ON users.role_id = roles.id;







# THIS DOES NOT USE A JOIN
SELECT first_name, gender FROM employees AS e
WHERE emp_no IN (SELECT emp_no FROM titles
WHERE title = 'Engineer' and to_date > curdate());

# SAME THING WITH A JOIN
SELECT first_name, gender FROM employees AS e
JOIN titles AS t on e.emp_no = t.emp_no
WHERE title = 'Engineer'
AND to_date > CURDATE();

SHOW tables;

SELECT COUNT(*) AS count FROM users
WHERE id IN (SELECT id from roles WHERE name = 'secretary');

SELECT * FROM roles;























