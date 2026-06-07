/* Write your T-SQL query statement below */
WITH CTE_RANK_SALARY AS
(
    SELECT
        D.name AS Department,
        E.name AS Employee,
        E.salary AS Salary,
        RANK() OVER(PARTITION BY D.id ORDER BY E.salary DESC) AS Top_Salary
    FROM
        Employee E
        INNER JOIN Department D ON D.id = E.departmentId
)
SELECT
    Department,
    Employee,
    Salary
FROM
    CTE_RANK_SALARY
WHERE
    Top_Salary = 1;