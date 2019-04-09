USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	artist VARCHAR(128) NOT NULL,
	album_name VARCHAR(128) NOT NULL,
	release_date INT,
	sales DECIMAL(9,5),
	genre VARCHAR(255),
	PRIMARY KEY (id)
	);



