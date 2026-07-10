IF OBJECT_ID('tempdb..#MyNumbers') IS NOT NULL 
    DROP TABLE #MyNumbers;

CREATE TABLE #MyNumbers (
    num INT
);

INSERT INTO #MyNumbers (num)
VALUES 
    (8),
    (8),
    (3),
    (3),
    (1),
    (4),
    (5),
    (6);
