megazor@m5:/me/code/spring/workspace07/spring-tutorial-126$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 1
Server version: 5.6.31 MySQL Community Server (GPL)                                                                                                                                            
                                                                                                                                                                                               
Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.                                                                                                                   
                                                                                                                                                                                               
Oracle is a registered trademark of Oracle Corporation and/or its                                                                                                                              
affiliates. Other names may be trademarks of their respective                                                                                                                                  
owners.                                                                                                                                                                                        
                                                                                                                                                                                               
Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.                                                                                                                 
                                                                                                                                                                                               
mysql> describe offers;                                                                                                                                                                        
ERROR 1046 (3D000): No database selected                                                                                                                                                       
mysql> use springtutorial;                                                                                                                                                                     
Reading table information for completion of table and column names                                                                                                                             
You can turn off this feature to get a quicker startup with -A                                                                                                                                 
                                                                                                                                                                                               
Database changed                                                                                                                                                                               
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
| 14 | Amanda King    | ak@hotmail.com                   | This is a test offer                                                  |
+----+----------------+----------------------------------+-----------------------------------------------------------------------+
14 rows in set (0.00 sec)                                                                                                                                                      
                                                                                                                                                                               
mysql> describe offers;
+-------+--------------+------+-----+---------+----------------+                                                                                                               
| Field | Type         | Null | Key | Default | Extra          |                                                                                                               
+-------+--------------+------+-----+---------+----------------+
| id    | int(11)      | NO   | PRI | NULL    | auto_increment |
| name  | varchar(100) | NO   |     | NULL    |                |
| email | varchar(60)  | NO   |     | NULL    |                |
| text  | text         | NO   |     | NULL    |                |
megazor@m5:/me/code/spring/workspace07$ qmysql -u root -p
bash: qmysql: command not found
megazor@m5:/me/code/spring/workspace07$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 15
Server version: 5.6.31 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> describe users;
ERROR 1046 (3D000): No database selected
mysql> user springtutorial
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'user springtutorial' at line 1
mysql> user springtutorial;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'user springtutorial' at line 1
mysql> use springtutorial;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select * from users;
+-----------+----------------------------------------------------------------------------------+---------+-----------------------+-----------+------+
| username  | password                                                                         | enabled | email                 | authority | name |
+-----------+----------------------------------------------------------------------------------+---------+-----------------------+-----------+------+
| jilldanko | c40786d84ea90607674331afbb358e0f0dc4b6963574c78e9e9b5089a4c6fd212ff392aed900ea26 |       1 | jilldanko@rookies.com | ROLE_USER | NULL |
| saduncan  | 39565ea4abc0604783a3d9ff1a25115f5f3f8fa7c9fa2312bd0f721d5d6d5bb795e0a25d7924703f |       1 | bre@tda.com           | ROLE_USER | NULL |
+-----------+----------------------------------------------------------------------------------+---------+-----------------------+-----------+------+
2 rows in set (0.00 sec)

mysql> select * from offers;
Empty set (0.00 sec)

mysql> select * from offers;
Empty set (0.00 sec)

mysql> select * from users;
+------------+----------------------------------------------------------------------------------+---------+-----------------------+-----------+------+
| username   | password                                                                         | enabled | email                 | authority | name |
+------------+----------------------------------------------------------------------------------+---------+-----------------------+-----------+------+
| amandaking | 5800b4f7080221dbf1388b48b2e8c1f5ff818ad21d2fb0acafa460300a4824851ce952c8af4f95ee |       1 | ak@cia.gov            | ROLE_USER | NULL |
| jilldanko  | c40786d84ea90607674331afbb358e0f0dc4b6963574c78e9e9b5089a4c6fd212ff392aed900ea26 |       1 | jilldanko@rookies.com | ROLE_USER | NULL |
| saduncan   | 39565ea4abc0604783a3d9ff1a25115f5f3f8fa7c9fa2312bd0f721d5d6d5bb795e0a25d7924703f |       1 | bre@tda.com           | ROLE_USER | NULL |
+------------+----------------------------------------------------------------------------------+---------+-----------------------+-----------+------+
3 rows in set (0.00 sec)

mysql> 
mysql> describe offers;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| id       | int(11)     | NO   | PRI | NULL    | auto_increment |
| text     | text        | NO   |     | NULL    |                |
| username | varchar(60) | YES  | MUL | NULL    |                |
+----------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> insert into offers (username, text) values ("amandaking","will create good code");
Query OK, 1 row affected (0.01 sec)

mysql> commit;
Query OK, 0 rows affected (0.00 sec)

mysql> describe offers;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| id       | int(11)     | NO   | PRI | NULL    | auto_increment |
| text     | text        | NO   |     | NULL    |                |
| username | varchar(60) | YES  | MUL | NULL    |                |
+----------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> select * from offers;
+----+-----------------------+------------+
| id | text                  | username   |
+----+-----------------------+------------+
|  1 | will create good code | amandaking |
+----+-----------------------+------------+
1 row in set (0.00 sec)

mysql> use springtest;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select * from users;
+--------------+----------------------------------------------------------------------------------+---------+----------------------------+-----------+--------------+
| username     | password                                                                         | enabled | email                      | authority | name         |
+--------------+----------------------------------------------------------------------------------+---------+----------------------------+-----------+--------------+
| johnwpurcell | fdbfa481e1afbcf4893ad1d992e896598112b42d673ec7d924fc01b56029008bfee21c7d17f509f4 |       1 | john@caveorprogramming.com | user      | John Purcell |
+--------------+----------------------------------------------------------------------------------+---------+----------------------------+-----------+--------------+
1 row in set (0.00 sec)

mysql> select * from offers;
Empty set (0.00 sec)

mysql> insert into offers (username, text) values ("amandaking","will create good code");
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`springtest`.`offers`, CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`))
mysql> quit
Bye
