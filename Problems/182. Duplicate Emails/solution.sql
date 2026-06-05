/* Write your T-SQL query statement below */
SELECT
    email
FROM
    Person
WHERE
    email IS NOT NULL
GROUP BY
    email
HAVING
    COUNT(*) > 1;