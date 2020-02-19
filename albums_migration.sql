CREATE DATABASE IF NOT EXISTS codeup_test_db;

DROP TABLE IF EXISTS albums;

USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(100) NOT NULL,
    name         VARCHAR(100) NOT NULL,
    release_date INT(4)       NOT NULL,
    sales        FLOAT        NOT NULL,
    genre        VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);
