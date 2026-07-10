IF OBJECT_ID('tempdb..#Triangle') IS NOT NULL 
    DROP TABLE #Triangle;

CREATE TABLE #Triangle (
    x INT,
    y INT,
    z INT,
    PRIMARY KEY (x, y, z)
);

INSERT INTO #Triangle (x, y, z)
VALUES 
    (13, 15, 30),
    (10, 20, 15);
