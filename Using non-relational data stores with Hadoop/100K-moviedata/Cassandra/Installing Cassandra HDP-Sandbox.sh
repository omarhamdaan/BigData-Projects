[maria_dev@sandbox-hdp ~]$ cd /etc/yum.repos.d
[maria_dev@sandbox-hdp yum.repos.d]$ su root

[root@sandbox-hdp yum.repos.d]# vi datastax.repo

[datastax]
name = DataStax Repo for Apache Cassandra
baseurl = http://rpm.datastax.com/community
enabled = 1
gpgcheck = 0

[root@sandbox-hdp yum.repos.d]# yum install dsc30

[root@sandbox-hdp yum.repos.d]# pip install cqlsh

[root@sandbox-hdp yum.repos.d]# service cassandra start

[root@sandbox-hdp yum.repos.d]# cqlsh

cqlsh --cqlversion="3.4.0"

# Create a keyspace in cassandra which is like database
[root@sandbox-hdp yum.repos.d]# CREATE KEYSPACE movielens WITH replication = {'class': 'SimpleStrategy', 'replication_factor':'1'} AND durable_writes = true;

# Go into movielens keyspace
[root@sandbox-hdp yum.repos.d]# USE movielens;

# Create table users
[root@sandbox-hdp yum.repos.d]# CREATE TABLE users (user_id int, age int, gender text, occupation text, zip text, PRIMARY KEY (user_id));

# To describe table users
[root@sandbox-hdp yum.repos.d]# DESCRIBE TABLE users;

