IF OBJECT_ID('tempdb..#Salary') IS NOT NULL 
    DROP TABLE #Salary;

CREATE TABLE #Salary (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    sex CHAR(1),
    salary INT
);

INSERT INTO #Salary (id, name, sex, salary)
VALUES 
    (1, 'A', 'm', 2500),
    (2, 'B', 'f', 1500),
    (3, 'C', 'm', 5500),
    (4, 'D', 'f', 500);
