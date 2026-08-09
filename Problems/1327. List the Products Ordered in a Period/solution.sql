/* Write your T-SQL query statement below */

SELECT
    P.product_name,
    SUM(O.unit) AS unit
FROM
    Products P
    INNER JOIN Orders O ON O.product_id = P.product_id
WHERE
    YEAR(O.order_date) = '2020'
    AND MONTH(O.order_date) = 2
GROUP BY
    P.product_name
HAVING
    SUM(O.unit) >= 100;