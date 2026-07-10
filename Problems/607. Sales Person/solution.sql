/* Write your T-SQL query statement below */

SELECT
    SP.name
FROM
    SalesPerson SP
WHERE
    SP.name NOT IN (
        SELECT
            SP.name
        FROM
            SalesPerson SP
            INNER JOIN Orders O ON O.sales_id = SP.sales_id
            INNER JOIN Company C ON C.com_id = O.com_id
        WHERE
            C.name = 'RED'
    );