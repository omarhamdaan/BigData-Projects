CREATE OR REPLACE VIEW topMovieIDsMore10Avg AS
SELECT movieid, AVG(rating) AS ratingAverage, COUNT(movieid) AS ratingCount
FROM ratings
GROUP BY movieid
ORDER BY ratingAverage DESC;



SELECT n.title, t.ratingAverage, t.ratingCount
FROM topMovieIDsMore10Avg t JOIN names n ON t.movieid = n.movieid
WHERE t.ratingCount > 10;
