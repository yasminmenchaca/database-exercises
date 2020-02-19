USE codeup_test_db;

# The name of all albums by Pink Floyd.
SELECT name AS 'Here are the albums from:'
FROM albums
WHERE artist = 'Pink Floyd';

# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released: '
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

# The genre for Nevermind
SELECT genre AS 'The genre for Nevermind: '
FROM albums
WHERE name = 'Nevermind';

# Which albums were released in the 1990s
SELECT name AS 'Albums released in the 1990s: '
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

# Which albums had less than 20 million certified sales
SELECT name AS 'Albums that had less than 20 million certified sales: '
FROM albums
WHERE sales < 20;

# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT name AS 'All the albums with a genre of "Rock": '
FROM albums
WHERE genre LIKE 'Rock';