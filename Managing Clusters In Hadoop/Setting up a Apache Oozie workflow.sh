# Open up maria_dev on Putty instance

[maria_dev@sandbox ~]$ mysql -u root -p

# Configuration setting for database

mysql> set names 'utf8';

mysql> set character set utf8;

mysql> create database movielens;

mysql> use movielens;

# Use the sql script in filepath
mysql> source movielens.sql;

mysql> show tables;

#Take a peak on the dataset we have
mysql> select * from movies limit 10;

# granting permissions for access to this database 
mysql> grant all privileges on movielens.* to ''@'localhost';

mysql> quit


# Show our hive  oldmovies.sql script 
[maria_dev@sandbox ~]$ less oldmovies.sql


# Show our  script 
[maria_dev@sandbox ~]$ less job.properties

# move the files to hadoop file

[maria_dev@sandbox ~]$ hadoop fs -put oozieworkflow.xml /user/maria_dev
[maria_dev@sandbox ~]$ hadoop fs -put oldmovies.sql /user/maria_dev

# Need to ensure the lib number is the same
# Go to ambari and login in admin and go to under files view, user/oozie/share/lib/ to check if the lib number matches
[maria_dev@sandbox ~]$ hadoop fs -put /usr/share/java/mysql-connector-java.jar /user/oozie/share/lib/lib_20171110212231/sqoop


#Go to ambari and restart all services for Oozie


# Running Oozie job in hadop
[maria_dev@sandbox ~]$ oozie job --oozie http://localhost:11000/oozie -config /home/maria_dev/job.properties -run


# Go to the oozie interface and copy and paste the link to see the console 
# To View the output file navigate to user/maria_dev/oldmovies/
