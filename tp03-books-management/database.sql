CREATE DATABASE IF NOT EXISTS bookstore;
USE bookstore;

CREATE TABLE IF NOT EXISTS book (
    book_id INT(11) NOT NULL AUTO_INCREMENT,
    title VARCHAR(128) NOT NULL,
    author VARCHAR(64) NOT NULL,
    price FLOAT NOT NULL,
    PRIMARY KEY (book_id),
    UNIQUE KEY book_id_UNIQUE (book_id),
    UNIQUE KEY title_UNIQUE (title)
);