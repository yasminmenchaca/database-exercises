USE codeup_test_db;

SELECT name AS 'Here are the albums from:'
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released: '
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'The genre for Nevermind: '
FROM albums
WHERE name = 'Nevermind';

SELECT release_date AS 'Albums released in the 1990s: '
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT sales AS 'Albums that had less than 20 million certified sales: '
FROM albums
WHERE sales < 20;

SELECT name AS 'All the albums with a genre of "Rock": '
FROM albums
WHERE genre = 'rock';