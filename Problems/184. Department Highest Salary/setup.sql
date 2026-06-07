IF OBJECT_ID('tempdb..#Employee') IS NOT NULL 
    DROP TABLE #Employee;

IF OBJECT_ID('tempdb..#Department') IS NOT NULL 
    DROP TABLE #Department;

CREATE TABLE #Employee (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    salary INT,
    departmentId INT
);

CREATE TABLE #Department (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO #Employee (id, name, salary, departmentId)
VALUES 
    (1, 'Joe', 70000, 1),
    (2, 'Jim', 90000, 1),
    (3, 'Henry', 80000, 2),
    (4, 'Sam', 60000, 2),
    (5, 'Max', 90000, 1);

INSERT INTO #Department (id, name)
VALUES 
    (1, 'IT'),
    (2, 'Sales');
