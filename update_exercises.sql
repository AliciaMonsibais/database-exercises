use codeup_test_db;

SELECT 'All albums in your table.' AS '';

SELECT * FROM albums;

UPDATE albums SET sales = sales * 10;

SELECT * FROM albums;

SELECT 'All albums released before 1980' AS '';

SELECT * FROM albums WHERE release_date < 1980;

SELECT 'All albums by Michael Jackson' as '';

SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

SELECT * FROM albums WHERE artist = 'Michael Jackson';