IF OBJECT_ID('tempdb..#Customers') IS NOT NULL 
    DROP TABLE #Customers;

IF OBJECT_ID('tempdb..#Orders') IS NOT NULL 
    DROP TABLE #Orders;

CREATE TABLE #Customers (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE #Orders (
    id INT PRIMARY KEY,
    customerId INT
);

INSERT INTO #Customers (id, name)
VALUES 
    (1, 'Joe'),
    (2, 'Henry'),
    (3, 'Sam'),
    (4, 'Max');

INSERT INTO #Orders (id, customerId)
VALUES 
    (1, 3),
    (2, 1);