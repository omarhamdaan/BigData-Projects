[maria_dev@sandbox ~]$ mongo


>use movielens


>db.users.find( {user_id: 100} )


> db.users.explain().find( {user_id: 100})

# The most efficient way to find a user is by creating an index
# Create an index on the user_id field
# The 1 means it is ascending

> db.users.createIndex ( {user_id: 1} )



# Mongodb query that groups users by occupation and average age
> db.users.aggregate([
	{ $group: { _id: {occupation: "$occupation"}, avgAge: { $avg: "$age" } } }
	])

# To count how many users in the collection users
> db.users.count()
943
# Get information about our collections in our database
> db.getCollectionInfos()

# Dropping the collection info
> db.users.drop()

> exit

