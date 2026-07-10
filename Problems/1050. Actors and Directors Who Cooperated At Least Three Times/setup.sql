IF OBJECT_ID('tempdb..#ActorDirector') IS NOT NULL 
    DROP TABLE #ActorDirector;

CREATE TABLE #ActorDirector (
    actor_id INT,
    director_id INT,
    timestamp INT PRIMARY KEY
);

INSERT INTO #ActorDirector (actor_id, director_id, timestamp)
VALUES 
    (1, 1, 0),
    (1, 1, 1),
    (1, 1, 2),
    (1, 2, 3),
    (1, 2, 4),
    (2, 1, 5),
    (2, 1, 6);
