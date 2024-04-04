# Create the table users in Phoenix , Create users table matches the same schema in the actual movielens data file format 
0:jdbc:phoenix:> CREATE TABLE users ( USERID INTEGER NOT NULL, AGE INTEGER, GENDER CHAR(1), OCCUPATION VARCHAR, ZIP VARCHAR CONSTRAINT pk PRIMARY KEY(USERID));

# Ensure the table users is created
0:jdbc:phoenix:> !tables

# Quit from the Phoenix database
0:jdbc:phoenix:> !quit
