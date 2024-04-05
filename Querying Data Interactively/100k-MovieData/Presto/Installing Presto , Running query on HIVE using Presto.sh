[maria_dev@sandbox ~]$ su root

# Download presto server onto your directory
[root@sandbox maria_dev]# wget https://repo1.maven.org/maven2/com/facebook/presto/presto-server/0.195/presto-server-0.195.tar.gz

# unpack the presto tar.gz
[root@sandbox maria_dev]# tar -xvf presto-server-0.195.tar.gz

# Cd to the presto-server-0.195
[root@sandbox maria_dev]# cd presto-server-0.195

# Download the config file from sundog website into the presto-server directory
[root@sandbox presto-server-0.195]# wget http://media.sundog-soft.com/hadoop/presto-hdp-config.tgz

# Uncompress the config file
[root@sandbox presto-server-0.195]# tar -xvf presto-hdp-config.tgz

# cd back to bin for presto-server
[root@sandbox presto-server-0.195]# cd bin

# Download the command line interface for Presto
[root@sandbox bin]# wget https://repo1.maven.org/maven2/com/facebook/presto/presto-cli/0.195/presto-cli-0.195-executable.jar

# Rename the CLI downloaded to presto
[root@sandbox bin]# mv presto-cli-0.195-executable.jar presto

# Allow Execution Permission
[root@sandbox bin]# chmod +x presto

#To go onto the presto-server home directory
[root@sandbox bin]# cd ..
 
#Command to start the server
[root@sandbox presto-server-0.195]# bin/launcher start

# Connect to the Web-Interface for Presto ( 127.0.0.1:8090 ) 

# Connect presto to the server (127.0.0.1:8090) and set up a command line interface for HIVE
[root@sandbox presto-server-0.195]# bin/presto --server 127.0.0.1:8090 --catalog hive

# Show tables from using Presto on Hiv on default database
presto> show tables from default;

# Show top 10 rows from default.ratings table
presto> SELECT * FROM default.ratings LIMIT 10;

# You can view the statistics from Presto web interface from the query

# Show the ratings where rating = 5
presto> SELECT * FROM default.ratings WHERE rating = 5 LIMIT 10;

# Count the number of rating where rating = 1
presto> SELECT COUNT (*) FROM default.ratings WHERE rating = 1;

# Quit from presto
presto> quit

# Stop presto server
[root@sandbox presto-server-0.195]# bin/launcher stop