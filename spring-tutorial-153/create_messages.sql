+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| username  | varchar(60)  | NO   | PRI | NULL    |       |
| password  | varchar(80)  | YES  |     | NULL    |       |
| enabled   | tinyint(4)   | YES  |     | 1       |       |
| email     | varchar(60)  | YES  |     | NULL    |       |
| authority | varchar(45)  | YES  |     | NULL    |       |
| name      | varchar(100) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> describe offers;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| id       | int(11)     | NO   | PRI | NULL    | auto_increment |
| text     | text        | NO   |     | NULL    |                |
| username | varchar(60) | YES  | MUL | NULL    |                |
+----------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE messages (
    ->   id int(11) NOT NULL AUTO_INCREMENT,
    ->   subject varchar(100) NOT NULL,
    ->   content varchar(1000) NOT NULL,
    ->   name varchar(100) NOT NULL,
    ->   email varchar(60) NOT NULL,
    ->   username varchar(60) NOT NULL,
    ->   PRIMARY KEY (id),
    ->   foreign key(username) references users(username)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.10 sec)

mysql> 
mysql>  show tables;
+----------------------+
| Tables_in_springtest |
+----------------------+
| messages             |
| offers               |
| temp1                |
| temp2                |
| users                |
+----------------------+
5 rows in set (0.00 sec)

mysql> delete table temp1
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table temp1' at line 1
mysql> drop table temp1;
Query OK, 0 rows affected (0.04 sec)

mysql> drop table temp2;
Query OK, 0 rows affected (0.04 sec)

mysql> show tables;
+----------------------+
| Tables_in_springtest |
+----------------------+
| messages             |
| offers               |
| users                |
+----------------------+
3 rows in set (0.00 sec)

