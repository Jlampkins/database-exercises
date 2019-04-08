USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
	Id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	artist VARCHAR(125),
	name VARCHAR(125),
	release_date INT,
	sales DECIMAL(9,2),
	genre VARCHAR(255),
	PRIMARY KEY (id))



