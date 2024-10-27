CREATE DATABASE IF NOT EXISTS alx_book_store

CREATE TABLE Books (
book_id (Primary Key)
title VARCHAR(130)
author_id (Foreign Key referencing Authors table)
price DOUBLE
publication_date DATE
);

CREATE TABLE Authors (author_id (Primary Key)
author_name VARCHAR(215)
);
