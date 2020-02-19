USE codeup_test_db;

SELECT 'Pink Floyd' AS 'Here are the albums from:';
SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

SELECT 'The Beatles' AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released: ';
SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'Nirvana' AS 'The genre for Nevermind: ';
SELECT genre
FROM albums
WHERE name = 'Nevermind';

SELECT 'the 1990''s' AS 'Albums released in the 1990s: ';
SELECT release_date
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Less than 20 million' AS 'Albums that had less than 20 million certified sales: ';
SELECT sales
FROM albums
WHERE sales < 20;

SELECT 'Rock' AS 'All the albums with a genre of "Rock": ';
SELECT name
FROM albums
WHERE genre = 'Rock';