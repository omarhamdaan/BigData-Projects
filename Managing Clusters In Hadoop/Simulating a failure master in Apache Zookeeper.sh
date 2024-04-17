# Open Putty to access HDP instance

maria_dev@sandbox ~]$ su root
[root@sandbox maria_dev]# cd /user/hdp/current/zookeeper-client/
[root@sandbox zookeeper-client]# cd bin

# Starts up Zookeeper bash prompt

[root@sandbox bin]./zkCli.sh
# Connected to Zookeeper

# Creating a Ephemrial test master for Zookeeper
[zk: localhost:2181(CONNECTED) 1] create -e /testmaster "127.0.0.1:2223"


# In order to know who the client it

[zk: localhost:2181(CONNECTED) 2] get /testmaster

#  shutdown ZooKeeper
[zk: localhost:2181(CONNECTED) 3] quit

# Zookeeper automatically delete the testmaster Znode ( Ephemrial node ) 
[root@sandbox bin]./zkCli.sh

# Failed because it already has been deleted
[zk: localhost:2181(CONNECTED) 1] get /testmaster

#Create a new ephemrial test master
[zk: localhost:2181(CONNECTED) 2] create -e /testmaster "127.0.0.1:2225"

# Zookeper wont allow because the node already exists
[zk: localhost:2181(CONNECTED) 3] create -e /testmaster "127.0.0.1:2225"

#No need to delete because its ephemrial , it will be deleted when quit
[zk: localhost:2181(CONNECTED) 4] quit