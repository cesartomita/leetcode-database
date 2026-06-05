IF OBJECT_ID('tempdb..#Logs') IS NOT NULL 
    DROP TABLE #Logs;

CREATE TABLE #Logs (
    id INT PRIMARY KEY,
    num VARCHAR(255)
);

INSERT INTO #Logs (id, num)
VALUES 
    (1, '1'),
    (2, '1'),
    (3, '1'),
    (4, '2'),
    (5, '1'),
    (6, '2'),
    (7, '2');