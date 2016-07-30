megazor@m5:/me/code/spring-tutorial-linux/mysql-local$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 5
Server version: 5.6.31 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use springtutorial
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> alter table users add column_name email varchar(60);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'email varchar(60)' at line 1
mysql> alter table users
    -> add email varchar(60);
Query OK, 0 rows affected (0.16 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe users;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| username | varchar(60) | NO   | PRI | NULL    |       |
| password | varchar(80) | YES  |     | NULL    |       |
| enabled  | tinyint(4)  | YES  |     | 1       |       |
| email    | varchar(60) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> select * from offers;
+----+----------------+----------------------------------+-----------------------------------------------------------------------+
| id | name           | email                            | text                                                                  |
+----+----------------+----------------------------------+-----------------------------------------------------------------------+
|  1 | Steve          | steve@caveofprogramming.com      | Cash for Software                                                     |
|  2 | Joe            | joe@caveofprogramming.com        | Elegent Web Design                                                    |
|  3 | Roger Moore    | roger@creativewebstuff.com       | I will create amazing websites that will astonish you                 |
|  4 | Roger Moore    | roger@creativewebstuff.com       | I will create amazing websites that will astonish you                 |
|  5 | Peggy Maxwell  | peggy@notgwebdesign.com          | Web applications done fast and cheap.                                 |
|  6 | Peggy Maxwell  | peggy@notgwebdesign.com          | Web applications done fast and cheap.                                 |
|  7 | Jill Danko     | jill@ludlowdesign.com            | Added controller code back in.  Troubleshooting double entry problem. |
|  8 | Garry Rafferty | garry@downthelineprogramming.com | Right down the line.                                                  |
|  9 | Selina Meyer   | selina@myers.com                 | Excellent web programming.                                            |
| 10 | Selina Meyer   | selina@myers.com                 | Excellent web programming.                                            |
| 11 | Selina Meyer   | selina@myers.com                 | Excellent web programming.  Was this too short?                       |
| 12 | Mary Richards  | Mary@GCN.com                     | Let's see if a new item looks ok.                                     |
| 13 | John123        | john@caveofprogramming.com       | Hello                                                                 |
+----+----------------+----------------------------------+-----------------------------------------------------------------------+
13 rows in set (0.00 sec)

mysql> select * from users;
+-------------------+----------+---------+-----------------------------+
| username          | password | enabled | email                       |
+-------------------+----------+---------+-----------------------------+
| Mike              | hello    |       1 | NULL                        |
| rhoda morgenstern | hello    |       1 | rhoda@caveofprogramming.com |
| ross              | hello    |       1 | ross@caveofprogramming      |
+-------------------+----------+---------+-----------------------------+
3 rows in set (0.00 sec)


