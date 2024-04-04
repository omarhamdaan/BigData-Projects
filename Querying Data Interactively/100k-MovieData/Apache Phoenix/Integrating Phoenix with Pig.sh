# Create the actual table before you can actually query the database with pig

# Go to pheonix client folder by going into this file directory from su root
[root@sandbox maria_dev]# cd /usr/hdp/current/phoenix-client/bin

[root@sandbox bin]# python sqlline.py


# Go to home directory for maria_dev
[root@sandbox bin]# cd /home/maria_dev

# upload Phoneix Pig folder 
[root@sandbox maria_dev]# less phoenix.pig

# To run phoenix script
[root@sandbox maria_dev]# pig phoenix.pig

# To run phoenix by using pig specifying mapreduce

[root@sandbox maria_dev]# pig -x mapreduce phoenix.pig

# To run pheonix by using pig specifying tez
[root@sandbox maria_dev]# pig -x tez phoenix.pig


[root@sandbox maria_dev]# cd /usr/hdp/current/phoenix-client/bin

# To run pheonix sql line interface
[root@sandbox bin]# python sqlline.py


