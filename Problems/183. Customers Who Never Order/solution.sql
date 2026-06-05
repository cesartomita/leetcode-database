/* Write your T-SQL query statement below */
SELECT
    C.name AS Customers
FROM
    Customers C
    LEFT JOIN Orders O ON O.customerId = C.id
WHERE
    O.id IS NULL;