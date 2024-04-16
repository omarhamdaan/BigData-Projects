# Hadoop Querying Data Interactively

This repository contains scripts and queries for setting up and interacting with Apache Drill, Apache Phoenix, and Presto in a Hadoop ecosystem. The scripts are aimed at integrating and querying data across various systems like MongoDB, Hive, HBase, and Cassandra.

## Apache Drill
Apache Drill enables querying data stored in various formats such as NoSQL and Hadoop. Here are the scripts and queries related to Apache Drill setup and usage:
- **Setting up Apache Drill**:
  - `Setting up ApacheDrill.sh`: Script for installing Apache Drill.
- **Querying across MongoDB and Hive**:
  - `Querying across MongoDB and Hive.sql`: SQL queries for interacting with data stored in MongoDB and Hive using Apache Drill.

## Apache Phoenix
Apache Phoenix provides SQL-like querying over HBase data. Here are the scripts and queries for working with Apache Phoenix:
- **Installation and Setup**:
  - `Installing Phoenix.sh`: Script for installing Apache Phoenix.
- **Creating Tables and Integrating with Pig**:
  - `Creating Table to integrate with pig.sql`: SQL script for creating tables in Phoenix to be used with Apache Pig.
  - `Integrating Phoenix with Pig.sh`: Bash script for integrating Phoenix tables with Pig scripts.
  - `Phoenix.pig`: Apache Pig script utilizing Phoenix for data operations.
- **Querying Data**:
  - `Querying Phoenix with Hbase.sql`: SQL script for querying data in Phoenix that is stored in HBase.

## Presto
Presto allows fast querying data from disparate sources. Here are scripts for setting up and using Presto:
- **Installing and Running Queries with Presto**:
  - `Installing Presto, Running query on HIVE using Presto.sh`: Script for installing Presto and running a sample query on Hive.
  - `Presto Queries on HIVE and Cassandra.sh`: Script for performing queries on Hive and Cassandra using Presto.

## Data Files
Data files included in this repository are used across different queries and scripts:
- `u.data`: Dataset file.
- `u.occupation`: Dataset file.

## Installation and Usage
Ensure you have the Hadoop environment set up along with the necessary services like HBase, Hive, MongoDB, and Cassandra depending on the scripts and queries you intend to run.
