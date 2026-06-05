IF OBJECT_ID('tempdb..#Employee') IS NOT NULL 
    DROP TABLE #Employee;

CREATE TABLE #Employee (
    id INT PRIMARY KEY,
    salary INT
);

INSERT INTO #Employee (id, salary)
VALUES 
    (1, 100),
    (2, 200),
    (3, 300);