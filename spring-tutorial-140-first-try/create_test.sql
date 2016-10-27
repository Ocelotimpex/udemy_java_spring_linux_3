mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| springtutorial     |
+--------------------+
4 rows in set (0.00 sec)

mysql> create database springtest;
Query OK, 1 row affected (0.00 sec)

mysql> exit
Bye
megazor@m5:/me/code/spring/workspace07/spring-tutorial-122$ mysql -u root -p ^C
megazor@m5:/me/code/spring/workspace07/spring-tutorial-122$ 
megazor@m5:/me/code/spring/workspace07/spring-tutorial-122$ mysql -u root -p springtest < update_springtutorial.sql
Enter password: 
megazor@m5:/me/code/spring/workspace07/spring-tutorial-122$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 5.6.31 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use springtest;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
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

mysql> select * from authorities;
+---------------+------------+
| username      | authority  |
+---------------+------------+
| administrator | ROLE_ADMIN |
| amandaking    | ROLE_USER  |
| jilldanko     | ROLE_USER  |
| sabrinaduncan | ROLE_USER  |
| testuser      | ROLE_USER  |
+---------------+------------+
5 rows in set (0.00 sec)

mysql> quit

