-- Create table Students
IF OBJECT_ID('tempdb..#Students') IS NOT NULL
    DROP TABLE #Students;

CREATE TABLE #Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255)
);

-- Create table Subjects
IF OBJECT_ID('tempdb..#Subjects') IS NOT NULL
    DROP TABLE #Subjects;

CREATE TABLE #Subjects (
    subject_name VARCHAR(255) PRIMARY KEY
);

-- Create table Examinations
IF OBJECT_ID('tempdb..#Examinations') IS NOT NULL
    DROP TABLE #Examinations;

CREATE TABLE #Examinations (
    student_id INT,
    subject_name VARCHAR(255)
);

-- Insert sample records
INSERT INTO #Students (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(13, 'John'),
(6, 'Alex');

INSERT INTO #Subjects (subject_name) VALUES
('Math'),
('Physics'),
('Programming');

INSERT INTO #Examinations (student_id, subject_name) VALUES
(1, 'Math'),
(1, 'Physics'),
(1, 'Programming'),
(2, 'Programming'),
(1, 'Physics'),
(1, 'Math'),
(13, 'Math'),
(13, 'Programming'),
(13, 'Physics'),
(2, 'Math'),
(1, 'Math');
