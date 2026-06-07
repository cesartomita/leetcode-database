# Write your MySQL query statement below

SELECT
    TB.player_id,
    TB.event_date AS first_login
FROM (
    SELECT
        player_id,
        event_date,
        ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY event_date) AS RN
    FROM
        Activity
) TB
WHERE
    TB.RN = 1;