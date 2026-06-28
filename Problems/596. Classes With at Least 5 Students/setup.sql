IF OBJECT_ID('tempdb..#Courses') IS NOT NULL 
    DROP TABLE #Courses;

CREATE TABLE #Courses (
    student VARCHAR(255),
    class VARCHAR(255),
    PRIMARY KEY (student, class)
);

INSERT INTO #Courses (student, class)
VALUES 
    ('A', 'Math'),
    ('B', 'English'),
    ('C', 'Math'),
    ('D', 'Biology'),
    ('E', 'Math'),
    ('F', 'Computer'),
    ('G', 'Math'),
    ('H', 'Math'),
    ('I', 'Math');
