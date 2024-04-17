# Setting up Kafka

# Go to 127.0.0.1:8080 and login as admin and start the service Kafka

# Click on service actions and start Kafka

# Open up Putty instance and login into maria_dev

# cd to Kafka-broker folder

[maria_dev@sandbox ~]$ cd /usr/hdp/current/kafka_broker/


[maria_dev@sandbox kafka_broker]$ cd bin

# Create a Kafka Topic to read data , and later used 

[maria_dev@sandbox bin]$ ./kafka-topics.sh --create --zookeeper sandbox-hdp.hortonworks.com:2181 --replication-factor 1 --partitions 1 --topic Omar

# Zookeeper keeps track of topics in Kafka

# This will give us a list of all the topics that have been created on this instance

[maria_dev@sandbox bin]$ ./kafka-topics.sh --list --zookeeper sandbox.hortonworks.com:2181


#Publishing some small data on a simple producer app

[maria_dev@sandbox bin]$ ./kafka-console-producer.sh --broker-list sandbox-hdp.hortonworks.com:6667 --topic Omar
Testing Streaming Data
Sent to Omar topic

# Write this line while both consoles are open 

Hello i am writing this data while having both consoles on my topic and it will update it on my connector immediatley !! 

# Open a second console window and login with putty that will act as a connector app to consume our topic

# Login into another window in PuTTY

[maria_dev@ sandbox ~]$ cd /usr/hdp/current/kafka-broker/bin

[maria_dev@sandbox bin]$ ./kafka-console-consumer.sh --bootstrap-server sandbox-hdp.hortonworks.com:6667 --topic Omar --from-beginning

Testing Streaming Data
Sent to Omar topic


Hello i am writing this data while having both consoles on my topic and it will update it on my connector immediatley !! 


