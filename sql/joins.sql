CREATE TABLE customer_list (
    cid INT PRIMARY KEY,
    cname VARCHAR(100),
    cphone VARCHAR(20)
);

CREATE TABLE product_list (
    pid INT PRIMARY KEY,
    pname VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE order_list (
    oid INT PRIMARY KEY,
    cid INT,
    pid INT,
    odate DATE,
    FOREIGN KEY (cid) REFERENCES customer_list(cid),
    FOREIGN KEY (pid) REFERENCES product_list(pid)
);

INSERT INTO customer_list VALUES
(1, 'Arun', '9876543210'),
(2, 'Priya', '9876501234'),
(3, 'Mani', '9003214567'),
(4, 'Siva', '9123456780'),
(5, 'Karan', '9988776655');

INSERT INTO product_list VALUES
(11, 'Laptop', 55000),
(12, 'Keyboard', 1200),
(13, 'Mouse', 600),
(14, 'Monitor', 7200),
(15, 'Pendrive', 500);

INSERT INTO order_list VALUES
(101, 1, 11, '2025-01-01'),
(102, 2, 13, '2025-01-05'),
(103, 1, 15, '2025-01-06'),
(104, 4, 11, '2025-01-07'),
(105, 3, 14, '2025-01-10');

CREATE TABLE student_data (
    sid INT PRIMARY KEY,
    sname VARCHAR(100)
);

CREATE TABLE course_data (
    courseid INT PRIMARY KEY,
    coursename VARCHAR(100),
    teachername VARCHAR(100)
);

CREATE TABLE student_course_map (
    mapid INT PRIMARY KEY,
    sid INT,
    courseid INT,
    FOREIGN KEY (sid) REFERENCES student_data(sid),
    FOREIGN KEY (courseid) REFERENCES course_data(courseid)
);

SELECT cl.cname, pl.pname, ol.odate
FROM order_list ol
INNER JOIN customer_list cl ON ol.cid = cl.cid
INNER JOIN product_list pl ON ol.pid = pl.pid;

SELECT pl.pname, pl.price, COUNT(ol.oid) AS total_count
FROM product_list pl
INNER JOIN order_list ol ON pl.pid = ol.pid
GROUP BY pl.pname, pl.price;

SELECT cl.cname, ol.oid, ol.odate
FROM customer_list cl
LEFT JOIN order_list ol ON cl.cid = ol.cid;

SELECT pl.pname, ol.oid
FROM product_list pl
LEFT JOIN order_list ol ON pl.pid = ol.pid;

SELECT cl.cname, ol.oid, ol.odate
FROM customer_list cl
RIGHT JOIN order_list ol ON cl.cid = ol.cid;

SELECT pl.pname, ol.oid, ol.odate
FROM product_list pl
RIGHT JOIN order_list ol ON pl.pid = ol.pid;
