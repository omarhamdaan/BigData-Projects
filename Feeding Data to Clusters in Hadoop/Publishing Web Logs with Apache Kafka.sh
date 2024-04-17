[maria_dev@sandbox kafka-broker]$ cd conf

# Before editing these conf files , we are making a copy to each one we will use

[maria_dev@sandbox conf]$ cp connect-standalone.properties ~/
[maria_dev@sandbox conf]$ cp connect-file-sink.properties ~/
[maria_dev@sandbox conf]$ cp connect-file-source.properties ~/

[maria_dev@sandbox conf]$ cd ~

# edit some properties to connect 

[maria_dev@sandbox ~]$ vi connect-standalone.properties

# change the line for bootstrap.servers to bootstrap.servers=sandbox-hdp.hortonworks.com:6667

[maria_dev@sandbox ~]$ vi connect-file-sink.properties 

# Change the file = /home/maria_dev/logout.txt and topics=log-test , ( Write our results into file)


[maria_dev@sandbox ~]$ vi connect-file-source.properties

# Change the file=/home/maria_dev/access_log_small.txt and topic=log-test

[maria_dev@sandbox ~]$ less access_log_small.txt

# SETTING UP A CONSUMER CONNECTOR TO LISTEN TO THE DATA IN REAL TIME ON ANOTHER CONSOLE

#Creating the log-test topic 
[maria_dev@sandbox bin]$ ./kadka-topic.sh --create --zookeeper sandbox-hdp:2181 --replication-factor1 --partitions 1 --topic log-test 

# Connecting the kafka
[maria_dev@sandbox bin]$ ./kafka-console-consumer.sh --bootstrap-server sandbox-hdp.hortonworks.com:6667 --topic log-test --zookeeper localhost:2181



# BACK TO THE CONNECTOR CONSOLE

[maria_dev@sandbox ~]$ cd /usr/hdp/current/kafka-broker/bin

# Connect and give it the three properties 

[maria_dev@sandbox bin]$ ./connect-standalone.sh ~/connect-standalone.properties ~/connect-file-source.properties ~/connect-file-sink.properties

# Now you will see the logs being shown in the other connector instance in real-time
