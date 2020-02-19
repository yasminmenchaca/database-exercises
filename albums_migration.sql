CREATE DATABASE IF NOT EXISTS codeup_test_db;

USE codeup_test_db;

DROP TABLE IF EXISTS albums;
-- creates 'albums' table if it doesn't exist;
CREATE TABLE albums
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(100)  NOT NULL,
    name         VARCHAR(100) NOT NULL,
    release_date INT(4)       NOT NULL,
    sales        FLOAT        NOT NULL,
    genre        VARCHAR(50)  NOT NULL,
    PRIMARY KEY (id)
);
