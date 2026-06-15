IF OBJECT_ID('tempdb..#Employee') IS NOT NULL 
    DROP TABLE #Employee;

CREATE TABLE #Employee (
    empId INT,
    name VARCHAR(255),
    supervisor INT,
    salary INT,
    PRIMARY KEY (empId)
);

INSERT INTO #Employee (empId, name, supervisor, salary)
VALUES 
    (3, 'Brad', NULL, 4000),
    (1, 'John', 3, 1000),
    (2, 'Dan', 3, 2000),
    (4, 'Thomas', 3, 4000);

IF OBJECT_ID('tempdb..#Bonus') IS NOT NULL 
    DROP TABLE #Bonus;

CREATE TABLE #Bonus (
    empId INT,
    bonus INT,
    PRIMARY KEY (empId)
);

INSERT INTO #Bonus (empId, bonus)
VALUES 
    (2, 500),
    (4, 2000);
