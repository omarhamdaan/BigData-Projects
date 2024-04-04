
# To see the tables which you can work with
0: jdbc:phoenix:> !tables

# Create table for us_population
0: jdbc:phoenix:> CREATE TABLE IF NOT EXISTS us_population(
........>	state CHAR(2) NOT NULL,
........>	city VARCHAR NOT NULL,
........>	population BIGINT,
........>	CONSTRAINT my_pk PRIMARY KEY(state, city));

# Update and insert into us_population
0: jdbc:phoenix:> UPSERT INTO US_POPULATION VALUES ('NY', 'New York', 8143197);
0: jdbc:phoenix:> UPSERT INTO US_POPULATION VALUES ('CA', 'Los Angeles', 3844829);

# See the datas fields from us_population
0: jdbc:phoenix:> SELECT * FROM US_POPULATION;

0: jdbc:phoenix:> SELECT * FROM US_POPULATION WHERE STATE='CA';

# Drop table us_population
0: jdbc:phoenix:> DROP TABLE US_POPULATION;

# Insert !quit to quit sqlline.py
0: jdbc:phoenix:> !quit
