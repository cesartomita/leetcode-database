IF OBJECT_ID('tempdb..#Orders') IS NOT NULL 
    DROP TABLE #Orders;

CREATE TABLE #Orders (
    order_number INT PRIMARY KEY,
    customer_number INT
);

INSERT INTO #Orders (order_number, customer_number)
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 3);
