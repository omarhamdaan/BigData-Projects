# Programming with Spark

This repository contains Python scripts for performing data analysis and machine learning tasks using Apache Spark. The focus is on analyzing movie ratings to find the lowest average rated movie and building a movie recommendation system. The analysis is conducted using different versions of Spark (1.0 and 2.0) and utilizes the MLlib library for the recommendation system.

## Datasets

The analysis is performed on two datasets:

- `u.data`: Includes information such as movie ID, movie rating, and the timestamp of the rating, among other details.
- `u.item`: Contains details like movie name and is utilized to map each movie ID from the `u.data` dataset to its corresponding movie name.

## Scripts

### Lowest Average Rated Movie (RDD) (Spark 1.0)

- **File**: `Lowest Average Rated Movie (RDD) (Spark 1.0).py`
- **Description**: Finds the lowest average rated movie using Spark 1.0.
- **Output**: The output is shown in `LowestRatedMovie (Spark 1.0)_Terminal Output.txt`.

### Lowest Average Rated Movie (RDD) (Spark 2.0)

- **File**: `Lowest Average Rated Movie (RDD) (Spark 2.0).py`
- **Description**: Finds the lowest average rated movie using Spark 2.0.
- **Output**: The output is shown in `LowestRatedMovie (Spark 2.0)_Terminal Output.txt`.

### Movie Recommendations with MLLib (Spark 2.0)

- **File**: `Movie recommendations with MLLib (SPARK2.0).py`
- **Description**: Uses Spark 2.0 and ALS (Alternating Least Squares) from MLlib to build a movie recommendation model.
- **Output**: The output is shown in `Movie recommendations with MLLib_Terminal Output.txt`.
