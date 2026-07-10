IF OBJECT_ID('tempdb..#Tree') IS NOT NULL 
    DROP TABLE #Tree;

CREATE TABLE #Tree (
    id INT PRIMARY KEY,
    p_id INT
);

INSERT INTO #Tree (id, p_id)
VALUES 
    (1, NULL),
    (2, 1),
    (3, 1),
    (4, 2),
    (5, 2);
