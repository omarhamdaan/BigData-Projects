[root@sandbox-hdp yum.repos.d]# spark-submit --packages datastax:spark-cassandra-connector:2.0.0-M2-s_2.11 CassandraSpark.py

+-------+---+------+----------+-----+
|user_id|age|gender|occupation|  zip|
+-------+---+------+----------+-----+
|    262| 19|     F|   student|78264|
|    880| 13|     M|   student|83702|
|    632| 18|     M|   student|55454|
|    541| 19|     F|   student|84302|
|    453| 18|     M|   student|06333|
|    223| 19|     F|   student|47906|
|    462| 19|     F|   student|02918|
|    110| 19|     M|   student|77840|
|    849| 15|     F|   student|25652|
|    729| 19|     M|   student|56567|
|    631| 18|     F|   student|38866|
|    787| 18|     F|   student|98620|
|    646| 17|     F|   student|51250|
|    925| 18|     F|  salesman|49036|
|    619| 17|     M|   student|44134|
|    320| 19|     M|   student|24060|
|    621| 17|     M|   student|60402|
|    887| 14|     F|   student|27249|
|    270| 18|     F|   student|63119|
|    761| 17|     M|   student|97302|
+-------+---+------+----------+-----+
only showing top 20 rows
[root@sandbox-hdp yum.repos.d]# service cassandra stop