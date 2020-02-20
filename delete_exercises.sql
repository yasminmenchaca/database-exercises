USE codeup_test_db;

# Albums released after 1991
SELECT id           AS "ID",
       artist       AS "Artist",
       name         AS "Album",
       release_date AS "Release Year",
       sales        AS "Sales",
       genre        AS "Genre"
FROM albums
WHERE release_date > 1991;

DELETE
FROM albums
WHERE release_date > 1991;

# Albums with the genre 'disco'
SELECT id           AS "ID",
       artist       AS "Artist",
       name         AS "Album",
       release_date AS "Release Year",
       sales        AS "Sales",
       genre        AS "Genre"
FROM albums
WHERE genre = 'Disco';

DELETE
FROM albums
WHERE genre = 'Disco';

# Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT id           AS "ID",
       artist       AS "Artist",
       name         AS "Album",
       release_date AS "Release Year",
       sales        AS "Sales",
       genre        AS "Genre"
FROM albums
WHERE artist = 'Whitney Houston';

DELETE
FROM albums
WHERE artist = 'Whitney Houston';