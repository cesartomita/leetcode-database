IF OBJECT_ID('tempdb..#Seat') IS NOT NULL 
    DROP TABLE #Seat;

CREATE TABLE #Seat (
    id INT PRIMARY KEY,
    student VARCHAR(255)
);

INSERT INTO #Seat (id, student)
VALUES 
    (1, 'Abbot'),
    (2, 'Doris'),
    (3, 'Emerson'),
    (4, 'Green'),
    (5, 'Jeames');
