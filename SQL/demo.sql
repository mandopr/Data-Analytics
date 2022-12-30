-- ********* to view databases in database server *********
SHOW DATABASES;

-- ********* to create database *********
CREATE DATABASE cat_app;

-- ********* to use database *********
USE cat_app;

-- ********* to delete database *********
DROP DATABASE cat_app;

-- ********* to view in which database we are working in *********
SELECT database();

-- ********* to create table *********
CREATE TABLE cats (
	name VARCHAR(100),
    age int
);

-- ********* to describe table (schema/structure of table) *********
DESC cats;

-- ********* to delete tables *********
DROP TABLE cats;

-- to view table in specified database
SHOW TABLES;


-- ********* EXCERCISE-1 *********
CREATE TABLE pasteries(
	name VARCHAR(50),
    quantity INT
);

DROP TABLE pasteries;


-- ********* to insert data into table *********
-- specifing name of columns is optional, if we want to add data in all columns of table then its not necessary to give column names
-- 
INSERT INTO cats(name, age)
VALUES ("Blue", 1);