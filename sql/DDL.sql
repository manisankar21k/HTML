CREATE DATABASE college;
USE college;

CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO Students (id, name, age, department, city) VALUES
(1, 'Arun', 20, 'CSE', 'Chennai'),
(2, 'Priya', 21, 'ECE', 'Coimbatore'),
(3, 'Karthik', 22, 'EEE', 'Madurai'),
(4, 'Meera', 19, 'IT', 'Salem'),
(5, 'Vikram', 23, 'Mechanical', 'Trichy');

