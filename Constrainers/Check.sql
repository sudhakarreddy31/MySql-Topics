create table Actors ( 
    ActorFirstName varchar(24), 
    ActorLastName varchar(25), 
    ActorAge int, 
    check (ActorAge>20));




desc Actors;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| ActorFirstName | varchar(24) | YES  |     | NULL    |       |
| ActorLastName  | varchar(25) | YES  |     | NULL    |       |
| ActorAge       | int         | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


mysql> insert into Actors(ActorFirstName,ActorLastName,ActorAge)
    -> values('Allu','Arjun',18);
ERROR 3819 (HY000): Check constraint 'Actors_chk_1' is violated.


+----------------+---------------+----------+
| ActorFirstName | ActorLastName | ActorAge |
+----------------+---------------+----------+
| Allu           | Arjun         |       22 |
| Sudhakarreddy  | Moola         |       23 |
+----------------+---------------+----------+
