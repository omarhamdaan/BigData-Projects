
# Programming with Hadoop PIG on Ambari

Pig scripts for analyzing movie datasets using Hadoop Pig on the Ambari platform. We work with two primary datasets to derive insights into movie ratings.

## Datasets

The analysis is performed on two datasets:

- **`u.data`**: This dataset includes information such as movie ID, movie rating, timestamp of the rating, among other details.
- **`u.item`**: Contains details like movie name and is utilized to map each movie ID from the `u.data` dataset to its corresponding movie name.

## Objectives

1. **Find the Most-Rated One-Star Movie**: Identifying the movie that, despite receiving the most number of one-star ratings, stands out in terms of viewer engagement.
   - Script: `Most-Rated-OneStar-Movie.pig`
   - Output: A detailed report is generated and saved as `Most-Rated-OneStar-Movie Output`.

2. **Find the Sorted List of Five-Star Movies**: Listing movies that have been rated as five stars, sorted to highlight the most favored ones.
   - Script: `Sorted_Five-Stars_Movie.pig`
   - Output: Results are compiled in `Sorted_5StarMoviesOutput.txt`, providing a ranked list of five-star movies.
