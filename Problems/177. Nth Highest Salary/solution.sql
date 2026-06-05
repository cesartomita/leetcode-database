CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        /* Write your T-SQL query statement below. */
        SELECT DISTINCT
            TB.salary
        FROM (
            SELECT
                salary,
                DENSE_RANK() OVER(ORDER BY salary DESC) AS RN
            FROM
                Employee
        ) TB
        WHERE
            TB.RN = @N
    );
END