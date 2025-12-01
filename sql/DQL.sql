CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO Employees (id, name, dept, salary, city) VALUES
(1, 'Arun', 'IT', 55000, 'Chennai'),
(2, 'Priya', 'HR', 48000, 'Chennai'),
(3, 'Karthik', 'IT', 72000, 'Bangalore'),
(4, 'Meera', 'Finance', 65000, 'Hyderabad'),
(5, 'Vikram', 'IT', 82000, 'Chennai'),
(6, 'Sanjay', 'Finance', 45000, 'Bangalore'),
(7, 'Riya', 'HR', 52000, 'Hyderabad');

SELECT dept, COUNT(*) AS total_employees
FROM Employees
GROUP BY dept;

SELECT dept, AVG(salary) AS avg_salary
FROM Employees
GROUP BY dept;

SELECT city, COUNT(*) AS total_employees
FROM Employees
GROUP BY city;

SELECT dept, MIN(salary) AS min_salary, MAX(salary) AS max_salary
FROM Employees
GROUP BY dept;

SELECT dept, SUM(salary) AS total_salary_spent
FROM Employees
GROUP BY dept;

SELECT dept, COUNT(*) AS total_employees
FROM Employees
GROUP BY dept
HAVING COUNT(*) > 2;

SELECT dept, AVG(salary) AS avg_salary
FROM Employees
GROUP BY dept
HAVING AVG(salary) > 50000;

SELECT city, COUNT(*) AS total_employees
FROM Employees
GROUP BY city
HAVING COUNT(*) > 1;

SELECT dept, MAX(salary) AS highest_salary
FROM Employees
GROUP BY dept
HAVING MAX(salary) > 70000;

SELECT dept, SUM(salary) AS total_salary_spent
FROM Employees
GROUP BY dept
HAVING SUM(salary) > 150000;
