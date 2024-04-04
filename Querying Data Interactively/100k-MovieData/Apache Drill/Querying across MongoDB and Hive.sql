# Go to Drill Ambari UI by typing 127.0.0.1:8765 ( When setting up Apache Drill) 

# Go to Drill Query Tab
# Type in SHOW DATABASES to show all your databases across your Hadoop cluster

# Take a peek inside Hive to see the database movie lens and table ratings limit 10 From Hive
SELECT * FROM hive.movielens.ratings LIMIT 10;

# Select 10 users from mongo.movielens.users limit 10 from MongoDB
SELECT * FROM mongo.movielens.users LIMIT 10;

# Select occupation and count the number of occupation from users from hive and mongo group by occupation ( Joining MongoDB and Hive) 
SELECT u.occupation, COUNT(*) AS totalUsers FROM hive.movielens.ratings r JOIN mongo.movielens.users u ON r.user_id = u.user_id GROUP BY u.occupation;

