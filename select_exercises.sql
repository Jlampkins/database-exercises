USE codeup_test_db;

SELECT 'All Albums by Pink Floyd' AS 'SHOW'
SELECT album_name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'Release date of Sgt. Pepper' AS 'SHOW'
SELECT release_date FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'Genre of Nevermind' AS 'SHOW';
SELECT genre FROM albums WHERE album_name = 'Nevermind';

SELECT 'Albums with release in 1990s' AS 'SHOW';
SELECT album_name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Albums that had more than 20mil in sales' AS 'SHOW';
SELECT album_name FROM albums WHERE sales < 20;

SELECT 'All Albums with genre of rock' AS 'SHOW';
SELECT * FROM albums WHERE genre = 'Rock';