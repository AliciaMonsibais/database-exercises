use codeup_test_db;

SELECT * FROM albums WHERE release_date > 1991;

SELECT * FROM albums WHERE genre LIKE 'disco';

SELECT * FROM albums WHERE artist LIKE 'Whitney Houston';

DELETE FROM albums WHERE release_date > 1991;

DELETE FROM albums WHERE genre LIKE 'disco';

DELETE FROM albums WHERE artist LIKE 'Whitney Houston' SELECT * FROM albums;