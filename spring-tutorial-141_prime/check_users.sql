megazor@m5:/me/code/spring/workspace07$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 3
Server version: 5.6.31 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use springtutorial;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select * from user;
ERROR 1146 (42S02): Table 'springtutorial.user' doesn't exist
mysql> select * from users'
    '> select * from users'
    -> 
    -> '
    '> 
    '> Ctrl-C -- exit!
Aborted
megazor@m5:/me/code/spring/workspace07$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 4
Server version: 5.6.31 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> select * from users;
ERROR 1046 (3D000): No database selected
mysql> select * from user;
ERROR 1046 (3D000): No database selected
mysql> select * from users;
ERROR 1046 (3D000): No database selected
mysql> user springtutorial;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'user springtutorial' at line 1
mysql> use springtutorial;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select * from users;
+---------------+----------------------------------------------------------------------------------+---------+------------------+
| username      | password                                                                         | enabled | email            |
+---------------+----------------------------------------------------------------------------------+---------+------------------+
| administrator | 5765670c9bfc4371d2f8c4c426e94d04f7a1b30b34e3c240b73486f3215eb94a758887400e8454ab |       1 | admin@cave.com   |
| jilldanko     | 208311ceb3559b0a6073e1b94300540143df9ebe21940d061901cb17909388c5590cb1d96e4f9a9f |       1 | jill@rookies.com |
| testuser      | e82f6eb7cf1d2c6067bca4eb882cbac454729dffae6e4618a2b3aa4af27a10d0dbc2629bbcb803e1 |       1 | test@test.com    |
+---------------+----------------------------------------------------------------------------------+---------+------------------+
3 rows in set (0.00 sec)

mysql> select * from users;
+---------------+----------------------------------------------------------------------------------+---------+------------------+
| username      | password                                                                         | enabled | email            |
+---------------+----------------------------------------------------------------------------------+---------+------------------+
| administrator | 5765670c9bfc4371d2f8c4c426e94d04f7a1b30b34e3c240b73486f3215eb94a758887400e8454ab |       1 | admin@cave.com   |
| amandaking    | 95869ab86df7db868b0e35ab3e743cd028d3a2041854308723d509d3eaf9f964e6585dd54ee12913 |       1 | aking@cia.gov    |
| jilldanko     | 208311ceb3559b0a6073e1b94300540143df9ebe21940d061901cb17909388c5590cb1d96e4f9a9f |       1 | jill@rookies.com |
| testuser      | e82f6eb7cf1d2c6067bca4eb882cbac454729dffae6e4618a2b3aa4af27a10d0dbc2629bbcb803e1 |       1 | test@test.com    |
+---------------+----------------------------------------------------------------------------------+---------+------------------+
4 rows in set (0.00 sec)

mysql> select * from users;
+---------------+----------------------------------------------------------------------------------+---------+------------------+
| username      | password                                                                         | enabled | email            |
+---------------+----------------------------------------------------------------------------------+---------+------------------+
| administrator | 5765670c9bfc4371d2f8c4c426e94d04f7a1b30b34e3c240b73486f3215eb94a758887400e8454ab |       1 | admin@cave.com   |
| amandaking    | 95869ab86df7db868b0e35ab3e743cd028d3a2041854308723d509d3eaf9f964e6585dd54ee12913 |       1 | aking@cia.gov    |
| jilldanko     | 208311ceb3559b0a6073e1b94300540143df9ebe21940d061901cb17909388c5590cb1d96e4f9a9f |       1 | jill@rookies.com |
| sabrinaduncan | 8c8fe28bc2181fffe70986329ce4fd43fdad566c92631404fef5621814c2e30ed11a28f22ccb461a |       1 | sduncan@tda.com  |
| testuser      | e82f6eb7cf1d2c6067bca4eb882cbac454729dffae6e4618a2b3aa4af27a10d0dbc2629bbcb803e1 |       1 | test@test.com    |
+---------------+----------------------------------------------------------------------------------+---------+------------------+
5 rows in set (0.00 sec)


