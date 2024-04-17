
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


# Next download the file access_log_small.txt

wget http://media.sundog-soft.com/hadoop/access_log_small.txt

# Take a little peek at it

less access_log_small.txt

# Lets set up another consumer on the other putty instance to consume the web logs in real time and let us see

pwd

./kafka-console-consumer.sh --bootstrap-server sandbox-hdp.hortonworks.com:6667 --topic log-test

# So now lets kick off our kafka connector

cd /usr/hdp/current/kafka-broker/bin

./connect-standalone.sh ~/connect-standalone.properties ~/connect-file-source.properties ~/connect-file-sink.properties

# Now you should see the putty instance consuming the web logs

# Next open up another putty instance and go to the home directory to open up logout.txt which contains all the web logs being consumed and written to

cd ~/
less logout.txt

# You can try adding a new line into access_log_small.txt

# It should now be reflected inside logout.txt and the putty instance

# After you are done with it, you can close down all the putty instances, and stop service in ambari