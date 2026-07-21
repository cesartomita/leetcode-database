-- Create table Queue
IF OBJECT_ID('tempdb..#Queue') IS NOT NULL
    DROP TABLE #Queue;

CREATE TABLE #Queue (
    person_id INT PRIMARY KEY,
    person_name VARCHAR(255),
    weight INT,
    turn INT
);

-- Insert sample records
INSERT INTO #Queue (person_id, person_name, weight, turn) VALUES
(5, 'Alice', 250, 1),
(4, 'Bob', 175, 5),
(3, 'Alex', 350, 2),
(6, 'John Cena', 400, 3),
(1, 'Winston', 500, 6),
(2, 'Marie', 200, 4);
