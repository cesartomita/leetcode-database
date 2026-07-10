/* Write your T-SQL query statement below */

WITH CTE_ROOT AS
(
    SELECT
        id,
        'Root' AS [type]
    FROM
        Tree
    WHERE
        p_id IS NULL
),
CTE_LEAF AS
(
    SELECT
        T2.id,
        'Leaf' AS [type]
    FROM
        Tree T1
        RIGHT JOIN Tree T2 ON T2.id = T1.p_id
    WHERE
        T1.id IS NULL
        AND T2.p_id IS NOT NULL
),
CTE_INNER AS
(
    SELECT
        T1.id,
        'Inner' AS [type]
    FROM
        Tree T1
        LEFT JOIN CTE_ROOT R ON R.id = T1.id
        LEFT JOIN CTE_LEAF L ON L.id = T1.id
    WHERE
        R.id IS NULL
        AND L.id IS NULL
),
CTE_TREE AS
(
    SELECT * FROM CTE_ROOT
    UNION
    SELECT * FROM CTE_INNER
    UNION
    SELECT * FROM CTE_LEAF
)
SELECT
    id,
    [type]
FROM
    CTE_TREE
ORDER BY
    1;