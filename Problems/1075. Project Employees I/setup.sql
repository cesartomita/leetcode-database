IF OBJECT_ID('tempdb..#Project') IS NOT NULL 
    DROP TABLE #Project;

CREATE TABLE #Project (
    project_id INT,
    employee_id INT,
    PRIMARY KEY (project_id, employee_id)
);

INSERT INTO #Project (project_id, employee_id)
VALUES 
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 4);

IF OBJECT_ID('tempdb..#Employee') IS NOT NULL 
    DROP TABLE #Employee;

CREATE TABLE #Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255),
    experience_years INT
);

INSERT INTO #Employee (employee_id, name, experience_years)
VALUES 
    (1, 'Khaled', 3),
    (2, 'Ali', 2),
    (3, 'John', 1),
    (4, 'Doe', 2);
