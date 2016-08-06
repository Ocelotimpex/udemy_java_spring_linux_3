DROP table users;

CREATE TABLE users (
  username varchar(60) NOT NULL,
  password varchar(80) ,
  enabled tinyint default 1,
  primary key (username)
);

insert users( username, password) values( 'Mike', 'hello');

select * from users;

mysql> describe users;

CREATE TABLE authorities (
  username varchar(60) NOT NULL,
  authority varchar(45) ,
  primary key (username)
);

DROP TABLE authorities ;

+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| username | varchar(60) | NO   | PRI | NULL    |       |
| password | varchar(80) | YES  |     | NULL    |       |
| enabled  | tinyint(1)  | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> describe autorities;
ERROR 1146 (42S02): Table 'springtutorial.autorities' doesn't exist
mysql> desc authorities
    -> ;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| username  | varchar(60) | NO   | PRI | NULL    |       |
| authority | varchar(45) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

