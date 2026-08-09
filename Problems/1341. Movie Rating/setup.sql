IF OBJECT_ID('tempdb..#Movies') IS NOT NULL 
    DROP TABLE #Movies;

IF OBJECT_ID('tempdb..#Users') IS NOT NULL 
    DROP TABLE #Users;

IF OBJECT_ID('tempdb..#MovieRating') IS NOT NULL 
    DROP TABLE #MovieRating;

CREATE TABLE #Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255)
);

CREATE TABLE #Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE #MovieRating (
    movie_id INT,
    user_id INT,
    rating INT,
    created_at DATE,
    PRIMARY KEY (movie_id, user_id)
);

INSERT INTO #Movies (movie_id, title) VALUES
(1, 'Avengers'),
(2, 'Frozen 2'),
(3, 'Joker');

INSERT INTO #Users (user_id, name) VALUES
(1, 'Daniel'),
(2, 'Monica'),
(3, 'Maria'),
(4, 'James');

INSERT INTO #MovieRating (movie_id, user_id, rating, created_at) VALUES
(1, 1, 3, '2020-01-12'),
(1, 2, 4, '2020-02-11'),
(1, 3, 2, '2020-02-12'),
(1, 4, 1, '2020-01-01'),
(2, 1, 5, '2020-02-17'),
(2, 2, 2, '2020-02-01'),
(2, 3, 2, '2020-03-01'),
(3, 1, 3, '2020-02-22'),
(3, 2, 4, '2020-02-25');
