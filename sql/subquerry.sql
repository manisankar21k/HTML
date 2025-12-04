DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id VARCHAR(20),
    job_title VARCHAR(50),
    city VARCHAR(50),
    join_date DATE
);

INSERT INTO employees VALUES
(1,'Iron Man',65000,'IT','Developer','Chennai','2025-01-01'),
(2,'Hawkeye',45000,'HR','HR Assistant','Chennai','2024-12-15'),
(3,'Thor',85000,'IT','Team Lead','Mumbai','2024-11-10'),
(4,'Black Widow',30000,'FIN','Accountant','Delhi','2024-10-20'),
(5,'Captain America',75000,'SALES','Sales Exec','Chennai','2024-09-25'),
(6,'Hulk',90000,'IT','Architect','Delhi','2024-08-10'),
(7,'Loki',55000,'FIN','Analyst','Mumbai','2024-07-01'),
(8,'Falcon',50000,'SALES','Sales Rep','Delhi','2024-06-15'),
(9,'Spider-Man',62000,'IT','Developer','Chennai','2024-05-20'),
(10,'Ant-Man',70000,'HR','HR Manager','Mumbai','2024-04-05'),
(11,'Doctor Strange',80000,'IT','Senior Dev','Chennai','2024-03-12'),
(12,'Star-Lord',47000,'FIN','Assistant','Chennai','2024-02-14');

SELECT dept_id, COUNT(emp_id) AS total_emp
FROM employees
GROUP BY dept_id
HAVING COUNT(emp_id) > 10;

SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id
HAVING AVG(salary) > 60000;

SELECT job_title, MAX(salary) AS max_salary
FROM employees
GROUP BY job_title
HAVING MAX(salary) > 80000;

SELECT dept_id, SUM(salary) AS total_salary
FROM employees
GROUP BY dept_id
HAVING SUM(salary) > 500000;

SELECT *
FROM employees;

SELECT emp_name, salary, dept_id
FROM employees;

SELECT emp_name AS name, salary AS pay
FROM employees;

SELECT *
FROM employees
WHERE salary > 55000;

SELECT *
FROM employees
WHERE dept_id = 'IT';

SELECT *
FROM employees
WHERE dept_id = 'IT' AND salary > 60000;

SELECT *
FROM employees
WHERE emp_name LIKE 'A%';

SELECT *
FROM employees
ORDER BY salary DESC;

SELECT *
FROM employees
ORDER BY dept_id ASC, salary DESC;

SELECT *
FROM employees
LIMIT 10;

SELECT *
FROM employees
LIMIT 10 OFFSET 10;

SELECT DISTINCT dept_id
FROM employees;

SELECT COUNT(DISTINCT dept_id) AS total_depts
FROM employees;
