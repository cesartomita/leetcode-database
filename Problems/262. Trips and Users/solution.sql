/* Write your T-SQL query statement below */
WITH CTE_A AS
(
    SELECT
        T.request_at,
        COUNT(T.id) AS cnt
    FROM
        Trips T
        INNER JOIN Users U ON U.users_id = T.client_id AND U.banned = 'NO'
        INNER JOIN Users U2 ON U2.users_id = T.driver_id AND U2.banned = 'NO'
    WHERE
        T.request_at BETWEEN '2013-10-01' AND '2013-10-03'
    GROUP BY
        T.request_at
),
CTE_B AS
(
    SELECT
        T.request_at,
        COUNT(T.id) AS cnt
    FROM
        Trips T
        INNER JOIN Users U ON U.users_id IN (T.client_id)
    WHERE
        U.banned = 'NO'
        AND T.status IN ('cancelled_by_client', 'cancelled_by_driver')
        AND T.request_at BETWEEN '2013-10-01' AND '2013-10-03'
    GROUP BY
        T.request_at
)

SELECT DISTINCT
    A.request_at AS 'Day',
    ISNULL(TRY_CAST(CAST(B.cnt AS DECIMAL(4,2)) / A.cnt AS DECIMAL(4,2)), 0.00) AS 'Cancellation Rate'
FROM
    CTE_A A
    LEFT JOIN CTE_B B ON B.request_at  = A.request_at;