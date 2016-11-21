 mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 4
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
mysql> CREATE TABLE `messages` (
    ->   `id` int(11) NOT NULL AUTO_INCREMENT,
    ->   `subject` varchar(100) NOT NULL,
    ->   `content` varchar(1000) NOT NULL,
    ->   `name` varchar(100) NOT NULL,
    ->   `email` varchar(60) NOT NULL,
    ->  `username` varchar(60) NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   KEY `id` (`id`)
    ->   KEY `fk_username` (`id`)
    ->   CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'KEY `fk_username` (`id`)
  CONSTRAINT `fk_username` FOREIGN KEY (`username`) REF' at line 10
mysql> CREATE TABLE `messages` (
    ->   `id` int(11) NOT NULL AUTO_INCREMENT,
    ->   `subject` varchar(100) NOT NULL,
    ->   `content` varchar(1000) NOT NULL,
    ->   `name` varchar(100) NOT NULL,
    ->   `email` varchar(60) NOT NULL,
    ->  `username` varchar(60) NOT NULL,                                                                                                                                                                                         
    ->   PRIMARY KEY (`id`),                                                                                                                                                                                                     
    ->   KEY `id` (`username`)                                                                                                                                                                                                   
    ->   KEY `fk_username` (`username`)                                                                                                                                                                                          
    ->   CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`)                                                                                                                                       
    -> ) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;                                                                                                                                                                 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'KEY `fk_username` (`username`)                                        
  CONSTRAINT `fk_username` FOREIGN KEY (`username' at line 10                                                                                                                                                                    
mysql> show tables;
+----------------------+                                                                                                                                                                                                         
| Tables_in_springtest |                                                                                                                                                                                                         
+----------------------+                                                                                                                                                                                                         
| offers               |                                                                                                                                                                                                         
| users                |                                                                                                                                                                                                         
+----------------------+                                                                                                                                                                                                         
2 rows in set (0.00 sec)                                                                                                                                                                                                         
                                                                                                                                                                                                                                 
mysql> CREATE TABLE `messages` (                                                                                                                                                                                                 
    ->   `id` int(11) NOT NULL AUTO_INCREMENT,                                                                                                                                                                                   
    ->   `subject` varchar(100) NOT NULL,                                                                                                                                                                                        
    ->   `content` varchar(1000) NOT NULL,                                                                                                                                                                                       
    ->   `name` varchar(100) NOT NULL,                                                                                                                                                                                           
    ->   `email` varchar(60) NOT NULL,                                                                                                                                                                                           
    ->  `username` varchar(60) NOT NULL,                                                                                                                                                                                         
    ->   PRIMARY KEY (`id`),                                                                                                                                                                                                     
    ->   KEY `fk_username` (`username`)                                                                                                                                                                                          
    ->   CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`)                                                                                                                                       
    -> ) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;                                                                                                                                                                 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`' at line 10
mysql> CREATE TABLE `messages` (
    ->   `id` int(11) NOT NULL AUTO_INCREMENT,
    ->   `subject` varchar(100) NOT NULL,
    ->   `content` varchar(1000) NOT NULL,
    ->   `name` varchar(100) NOT NULL,
    ->   `email` varchar(60) NOT NULL,
    ->  `username` varchar(60) NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   KEY `fk_username` (`username`),
    ->   CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
    -> ) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1' at line 11
mysql> CREATE TABLE `messages` (
    ->   `id` int(11) NOT NULL AUTO_INCREMENT,
    ->   `subject` varchar(100) NOT NULL,
    ->   `content` varchar(1000) NOT NULL,
    ->   `name` varchar(100) NOT NULL,
    ->   `email` varchar(60) NOT NULL,
    ->  `username` varchar(60) NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   KEY `fk_username` (`username`),
    ->   CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
ERROR 1022 (23000): Can't write; duplicate key in table 'messages'
mysql> show tables
    -> ;
+----------------------+
| Tables_in_springtest |
+----------------------+
| offers               |
| users                |
+----------------------+
2 rows in set (0.00 sec)

mysql> CREATE TABLE `messages` (
    ->   `id` int(11) NOT NULL AUTO_INCREMENT,
    ->   `subject` varchar(100) NOT NULL,
    ->   `content` varchar(1000) NOT NULL,
    ->   `name` varchar(100) NOT NULL,
    ->   `email` varchar(60) NOT NULL,
    ->  `username` varchar(60) NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
ERROR 1022 (23000): Can't write; duplicate key in table 'messages'

