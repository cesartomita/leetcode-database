IF OBJECT_ID('tempdb..#Employees') IS NOT NULL 
    DROP TABLE #Employees;

IF OBJECT_ID('tempdb..#EmployeeUNI') IS NOT NULL 
    DROP TABLE #EmployeeUNI;

CREATE TABLE #Employees (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE #EmployeeUNI (
    id INT,
    unique_id INT,
    PRIMARY KEY (id, unique_id)
);

INSERT INTO #Employees (id, name) VALUES
(1, 'Alice'),
(7, 'Bob'),
(11, 'Meir'),
(90, 'Winston'),
(3, 'Jonathan');

INSERT INTO #EmployeeUNI (id, unique_id) VALUES
(3, 1),
(11, 2),
(90, 3);
