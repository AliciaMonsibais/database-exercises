USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd.' AS '';

SELECT NAME FROM albums
WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS '';

SELECT 'The genre for Nevermind' AS '';

SELECT genre FROM albums WHERE NAME = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS '';

SELECT * FROM albums WHERE relese_date BETWEEN 1990 AND 1999;

SELECT 'Which albums had less than 20 million certified sales' AS '';

SELECT * FROM albums WHERE sales < 20;

SELECT 'All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?' as '';

SELECT * FROM albums WHERE genre = 'rock';