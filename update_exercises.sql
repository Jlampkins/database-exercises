use codeup_test_db;


SELECT 'All Albums' AS 'SHOW';
SELECT * FROM albums;
UPDATE albums SET sales = sales * 10;

SELECT 'Albums released before 1980' AS 'SHOW';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;


SELECT 'Albums by Michael Jackson' AS 'SHOW';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
