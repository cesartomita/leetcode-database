/* Write your T-SQL query statement below */
WITH CTE_INIT AS
(
    SELECT
        id,
        visit_date,
        people,
        IIF(people >= 100, 1, 0) AS greater_than_100,
        CASE
            WHEN IIF(people >= 100, 1, 0) = 1 AND LAG(IIF(people >= 100, 1, 0), 1, 0) OVER(ORDER BY visit_date) = 0 THEN 1 ELSE 0
            END init_group
    FROM
        Stadium
),
CTE_GROUP AS
(
    SELECT
        id,
        visit_date,
        people,
        init_group,
        greater_than_100,
        SUM(init_group) OVER(ORDER BY visit_date) AS sum_group
    FROM
        CTE_INIT
),
CTE_SUM_GROUP AS
(
    SELECT
        id,
        visit_date,
        people,
        init_group,
        sum_group,
        SUM(greater_than_100) OVER(PARTITION BY sum_group) AS sum_group_greater_than_100
    FROM
        CTE_GROUP
    WHERE
        people >= 100
)
SELECT
    id,
    visit_date,
    people
FROM
    CTE_SUM_GROUP
WHERE
    sum_group_greater_than_100 >= 3
ORDER BY
    id;