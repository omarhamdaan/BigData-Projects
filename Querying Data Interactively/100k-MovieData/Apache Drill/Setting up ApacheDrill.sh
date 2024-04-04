[maria-dev@sandbox ~]$ su root 

[root@sandbox maria_dev]# export SPARK_MAJOR_VERSION=2

# To start the script importing the data into MongoDB

[root@sandbox maria_dev]# spark-submit --packages org.mongodb.spark:mongo-spark-connector_2.11:2.2.0 MongoSpark.py


# Download the file through  Putty hadoop instance
[root@sandbox maria_dev]# wget http://archive.apache.org/dist/drill/drill-1.12.0/apache-drill-1.12.0.tar.gz

# To uncompress the apache drill tar gz file
[root@sandbox maria_dev]# tar -xvf apache-drill-1.12.0.tar.gz

[root@sandbox maria_dev]# cd apache-drill-1.12.0

# To allow drill to be started and use the ports already forwarded inside your Hadoop instance
[root@sandbox-hdp apache-drill-1.12.0 ]# bin/drillbit.sh start -Ddrill.exec.http.port=8765

# Go and connect to drill User-Interface on port 8765 as specfied 