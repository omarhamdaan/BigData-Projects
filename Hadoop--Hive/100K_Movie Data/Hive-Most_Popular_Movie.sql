CREATE VIEW topMovieIDS AS 
SELECT movieID , count(movieID) as ratingCount
FROM ratings
GROUP BY movieID 
ORDER BY ratingCount DESC; 

SELECT n.title , ratingCount
FROM topMovieIDS t JOIN names n ON t.movieID = n.movieID;
