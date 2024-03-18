# MovieLens Big Data Analysis 

## Overview
This Task leverages a real-life dataset obtained from MovieLens to perform comprehensive data analysis through MapReduce, a programming model that allows for massive scalability across hundreds or thousands of servers in a Hadoop cluster. The aim is to extract insightful information from a large volume of movie ratings data using Python.

## Objectives
The Task is structured around two main objectives:

### 1. Rank Movie by Count (`RankMovieCount.py`)
The `RankMovieCount.py` script employs MapReduce to process and analyze movie ratings data. It extracts each movie and the total number of ratings it has received. The output is sorted from the least to the most number of ratings, displaying the movie ID for reference. This functionality helps in understanding the popularity of movies based on the volume of ratings.

**Output File:** `sandbox-hdpTerminal(RankMovieCount).txt`

This file contains the output from running `RankMovieCount.py` on the Sandbox HDP terminal, showcasing the sorted list of movies by their rating counts.

### 2. Ratings Breakdown (`RatingsBreakdown.py`)
The `RatingsBreakdown.py` script is another MapReduce function designed to count the number of movies ranked from 1 to 4. This analysis provides insights into the distribution of movie ratings, highlighting general audience preferences.

**Output File:** `sandbox-hdpTerminal(RatingsBreakdown).txt`

This file captures the output from executing `RatingsBreakdown.py` on the Sandbox HDP terminal, illustrating the breakdown of movies by rating categories.