create table players ( 
    id int not null, 
    playerfirstname varchar(23), 
    playerlastname varchar(23), 
    sports varchar(23));


desc players;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| id              | int         | NO   |     | NULL    |       |
| playerfirstname | varchar(23) | YES  |     | NULL    |       |
| playerlastname  | varchar(23) | YES  |     | NULL    |       |
| sports          | varchar(23) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+


insert into players(id,playerfirstname,playerlastname,sports) 
values(1,'virat','kohil','cricket');

mysql> select * from players;
+----+-----------------+----------------+---------+
| id | playerfirstname | playerlastname | sports  |
+----+-----------------+----------------+---------+
|  1 | virat           | kohil          | cricket |
+----+-----------------+----------------+---------+
1 row in set (0.00 sec)


 alter table players
    -> add playerlocation varchar(255);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from players;
+----+-----------------+----------------+---------+----------------+
| id | playerfirstname | playerlastname | sports  | playerlocation |
+----+-----------------+----------------+---------+----------------+
|  1 | virat           | kohil          | cricket | NULL           |
+----+-----------------+----------------+---------+----------------+



 insert into players(id,playerfirstname,playerlastname,sports,playerlocation) values(1,'Sachin','Tendukar','cricket','Mubai');
Query OK, 1 row affected (0.01 sec)

mysql> select * from players;
+----+-----------------+----------------+---------+----------------+
| id | playerfirstname | playerlastname | sports  | playerlocation |
+----+-----------------+----------------+---------+----------------+
|  1 | virat           | kohil          | cricket | NULL           |
|  1 | Sachin          | Tendukar       | cricket | Mubai          |
+----+-----------------+----------------+---------+----------------+




alter table players drop playerlastname;


mysql> select * from players;
+----+-----------------+---------+----------------+
| id | playerfirstname | sports  | playerlocation |
+----+-----------------+---------+----------------+
|  1 | virat           | cricket | NULL           |
|  1 | Sachin          | cricket | Mubai          |
+----+-----------------+---------+----------------+
