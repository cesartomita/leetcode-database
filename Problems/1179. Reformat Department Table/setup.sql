IF OBJECT_ID('tempdb..#Department') IS NOT NULL 
    DROP TABLE #Department;

CREATE TABLE #Department (
    id INT,
    revenue INT,
    month VARCHAR(5),
    PRIMARY KEY (id, month)
);

INSERT INTO #Department (id, revenue, month)
VALUES 
    (1, 8000, 'Jan'),
    (2, 9000, 'Jan'),
    (3, 10000, 'Feb'),
    (1, 7000, 'Feb'),
    (1, 6000, 'Mar');
