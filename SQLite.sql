CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    marks INT
);

INSERT INTO students VALUES
(1, 'Priya', 85),
(2, 'Kumar', 72);

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT
);

INSERT INTO employees VALUES
(101, 'Arun', 6000),
(102, 'Meena', 7500);


CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(50),
    price INT
);

INSERT INTO products VALUES
(1, 'Laptop', 55000),
(2, 'Mouse', 300),
(3, 'Keyboard', 700);


UPDATE employees
SET salary = salary * 1.10
WHERE emp_id = 101;   -- change ID if needed


DELETE FROM products
WHERE price > 500;


SELECT *
FROM students
WHERE marks > 80;


WITH RECURSIVE salary_increment AS (
    SELECT emp_id, emp_name, salary
    FROM employees

    UNION ALL

    SELECT emp_id, emp_name, salary + 1000
    FROM salary_increment
    WHERE salary < 10000
)
SELECT *
FROM salary_increment;


ALTER TABLE students
ADD remarks VARCHAR(100);


CREATE TABLE students_backup AS
SELECT * FROM students;