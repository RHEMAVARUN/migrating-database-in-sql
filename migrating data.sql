CREATE  DATABASE db1;
USE db1;
CREATE TABLE customers (
  id INT,
  name VARCHAR(255),
  email VARCHAR(255)
);
INSERT INTO customers (id, name, email) VALUES
  (1, 'varun', 'varun@gmail.com'),
  (2, 'vinay', 'vinay@gmail.com'),
  (3, 'vamsi', 'vamsi@gmail.com');
CREATE DATABASE db2;
USE db2;
CREATE TABLE customers (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255)
);
INSERT INTO db2.dbo.customers (id, name, email)
SELECT id, name, email FROM db1.dbo.customers;
SELECT * FROM db2.dbo.customers;