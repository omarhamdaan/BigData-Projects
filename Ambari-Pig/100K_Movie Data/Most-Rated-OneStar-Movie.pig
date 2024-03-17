

metadata = LOAD '/user/maria_dev/ml-100k/u.item' USING PigStorage('|') 
	AS (movieID:int , movieTitle:chararray , releaseDate:chararray , videoRelease:chararray , imdbLink:chararray);
    
nameLookup = FOREACH metadata GENERATE movieID , movieTitle;

groupedRatings = GROUP ratings BY movieID; 

avgRatings = FOREACH groupedRatings GENERATE group AS movieID , AVG(ratings.rating) AS avgRating , COUNT(ratings.rating) AS countRating;


oneStarMovies = FILTER avgRatings BY avgRating < 2.0; 

namedBadMovies = JOIN oneStarMovies BY movieID, nameLookup  BY movieID;

finalResults = FOREACH namedBadMovies GENERATE nameLookup::movieTitle as movieName, 
	oneStarMovies::avgRating as avgRating , oneStarMovies::countRating AS countRating;

finalResultsSorted = ORDER finalResults BY countRating DESC ; 
 

DUMP finalResultsSorted; 
