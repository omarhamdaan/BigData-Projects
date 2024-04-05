#Ensure you are in the presto-server directory
[root@sandbox presto-server-0.195]# scl enable python27 bash

# We need python version is 2.7
[root@sandbox presto-server-0.195]# python -V

# Start your cassandra service
[root@sandbox presto-server-0.195]# service cassandra start
Starting cassandta : OK
# Enable thrift server to run cassandra
[root@sandbox presto-server-0.195]# nodetool enablethrift

# Enable cqlsh server first
[root@sandbox presto-server-0.195]# cqlsh

# Enabling cassandra sql shell
[root@sandbox presto-server-0.195]# cqlsh --cqlversion="3.4.0"

# See what is in there the keyspaces
[root@sandbox presto-server-0.195]# describe keyspaces;

# Use MovieLens data , and make sure it is running correctly
cqlsh> use movielens;
cqlsh:movielens> describe tables;
cqlsh:movielens> select * from users limit 10;
cqlsh:movielens> quit

# Now to configure the properties for CASSANDRA to connect with PRESTO
[root@sandbox presto-server-0.195]# cd etc/catalog
 
# Create cassandra config file inside catalog
[root@sandbox catalog]# vi cassandra.config

connector.name=cassandra
cassandra.contact-points=127.0.0.1

#HIT ESC and :wq to write and quit

# Go back to presto-server directory
[root@sandbox catalog]# cd ../..

# Start up bin/launcher start
[root@sandbox presto-server-0.195]# bin/launcher start

#Connect presto user-interface with HIVE AND CASSANDRA
[root@sandbox presto-server-0.195]# bin/presto --server 127.0.0.1:8090 --catalog hive,cassandra

# Show tables from cassandra
presto> show tables from cassandra.movielens;

# Describe cassandra.movielens.users;
presto> describe cassandra.movielens.users;

presto> select * from cassandra.movielens.users limit 10;

# Select rows from hive table
presto> select * from hive.default.ratings limit 10;

# select rows from hive and cassandra
presto> select u.occupation, count(*) from hive.default.ratings r join cassandra.movielens.users u on r.user_id = u.user_id group by u.occupation;

presto> quit

# stop presto-server
[root@sandbox presto-server-0.195]# bin/launcher stop

# stop cassandra service
[root@sandbox presto-server-0.195]# service cassandra stop