# Hadoop Programming with NoSQL Databases

This repository contains scripts and code for programming with NoSQL databases like Cassandra, MongoDB, and HBase within a Hadoop ecosystem. These resources demonstrate how to install, configure, and utilize these databases for large-scale data handling and analysis.

## Cassandra
Scripts and Python code for integrating Cassandra with Spark, including setup scripts for a Hadoop environment.
- **Scripts and Code**:
  - `CassandraSpark.py`: Python script for processing data using Apache Spark and Cassandra.
  - `CassandraSparkOutput.sh`: Bash script that outputs the results from the Spark processing.
  - `Installing Cassandra HDP-Sandbox.sh`: Script for installing Cassandra on HDP (Hortonworks Data Platform) Sandbox.

## HBase
Examples of how to import and manipulate movie rating data using HBase and Pig scripting.
- **Data Import and Manipulation**:
  - `Import movie ratings into HBase.py`: Python script for importing movie ratings into HBase.
  - `Import movie ratings into HBase.sh`: Bash script to execute the Python script and manage data import into HBase.
  - `Hbase.pig`: Apache Pig script for processing data stored in HBase.
  - `HbaseShell.sh`: Script for accessing and manipulating data in HBase via the shell.

## MongoDB
Scripts for using MongoDB with Spark and basic shell operations for MongoDB.
- **Scripts and Code**:
  - `MongoDBShell.sh`: Bash script for executing MongoDB shell commands.
  - `MongoSpark.py`: Python script for processing data using Apache Spark and MongoDB.

## Data Files
Included data files used across different databases for testing and demonstration purposes:
- `u.user`: User dataset file.
- `u.data`: Movie ratings dataset file.

## Installation and Usage
To ensure proper execution of the scripts, your Hadoop ecosystem should be pre-configured with the respective NoSQL databases. Follow the installation scripts provided for setting up each database.
