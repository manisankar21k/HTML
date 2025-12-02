CREATE TABLE employees(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    dept VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    city VARCHAR(30),
    join_date DATE NOT NULL,
    email VARCHAR(50) UNIQUE
);

INSERT INTO employees VALUES
(1,'Manikandan','IT',48000,'Chennai','2025-01-10','mani@gmail.com'),
(2,'Arunkumar','HR',52000,'Delhi','2025-01-25','arun@gmail.com'),
(3,'Sivakumar','IT',60000,'Chennai','2025-02-01','siva@gmail.com'),
(4,'Kaviyarasan','Finance',75000,'Mumbai','2025-01-05','kavi@gmail.com'),
(5,'Rajarajan','HR',49000,'Chennai','2025-02-03','raja@gmail.com');

UPDATE employees SET name = UPPER(name) WHERE id = 2;

SELECT dept, SUM(salary) AS total_salary FROM employees GROUP BY dept;

SELECT * FROM employees WHERE join_date >= CURDATE() - INTERVAL 30 DAY;

SELECT name, salary, ROUND(salary,2) AS rounded_salary FROM employees;

SELECT * FROM employees WHERE LENGTH(name) > 5;

SELECT dept, AVG(salary) AS avg_salary FROM employees GROUP BY dept HAVING AVG(salary) > 50000;

UPDATE employees SET salary = salary * 1.10;

ALTER TABLE employees ADD bonus INT;

SELECT name, join_date, YEAR(join_date) AS join_year FROM employees ORDER BY join_date;
