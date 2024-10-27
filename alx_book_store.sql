CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE Books (book_id INT PRIMARY KEY,
title VARCHAR(130),
author_id (Foreign Key referencing Authors table),
price DOUBLE,
publication_date DATE
);

CREATE TABLE Authors (author_id INT Primary Key,
author_name VARCHAR(215)
);
CREATE TABLE Customers (customer_id INT PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT,
);

CREATE TABLE Orders(order_id INT PRIMARY KEY,
customer_id (Foreign Key referencing Customers table),
order_date DATE
  )
