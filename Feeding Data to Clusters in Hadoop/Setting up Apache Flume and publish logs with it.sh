# Log into Putty Instance 

[maria_dev@sandbox ~] $ less SimpleFlume.conf

# Open a new terminal to run flume from it 
 
# Go to other putty instance and cd to the flume-server folder

[maria_dev@sandbox ~] cd /usr/hdp/current/flume-server/

# Run Flume and create an agent based on the confifugration file you specified

# Need to ensure the proper permissions are set for flume to write to flume.log

[maria_dev@sandbox flume-server]$ sudo chmod 777 -R /var/log/flume/flume.log

[maria_dev@sandbox flume-server]$ bin/flume-ng agent --conf conf --conf-file ~/SimpleFlume.conf --name a1 -DFlume.root.logger=INFO,console

# open the first putty instance of maria_dev and connect to it 

# Set up your port for Flume
[maria_dev@sandbox ~]$ telnet localhost 44444

# Try writing this lines onto Flume, it should be able to display on the other putty instance

I am writing this from my other instance and connected using flume!

ctrl bracket ^] to quit

# To view messages sent direct to --> /var/log/flume/flume.log