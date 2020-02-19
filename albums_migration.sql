CREATE DATABASE IF NOT EXISTS codeup_test_db;

USE codeup_test_db;

-- creates 'albums' table if it doesn't exist;
CREATE TABLE IF NOT EXISTS albums
(
    id           INT UNSIGNED   NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(50)    NOT NULL,
    name         VARCHAR(500)   NOT NULL,
    release_date INT(4)         NOT NULL,
    sales        DECIMAL(10, 2) NOT NULL,
    genre        VARCHAR(20)    NOT NULL,
    PRIMARY KEY (id)
);
