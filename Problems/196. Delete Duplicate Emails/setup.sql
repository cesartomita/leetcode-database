IF OBJECT_ID('tempdb..#Person') IS NOT NULL 
    DROP TABLE #Person;

CREATE TABLE #Person (
    id INT PRIMARY KEY,
    email VARCHAR(255)
);

INSERT INTO #Person (id, email)
VALUES 
    (1, 'john@example.com'),
    (2, 'bob@example.com'),
    (3, 'john@example.com');
