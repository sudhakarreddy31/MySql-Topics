mysql> create table Toppers
    -> (
    -> TopperId int not null,
    -> TopperName Varchar(233),
    -> TopperRank int,
    -> TopperMarks int,
    -> TopperPercantage int,
    -> primary key(TopperId)
    -> );

mysql> desc Toppers;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| TopperId         | int          | NO   | PRI | NULL    |       |
| TopperName       | varchar(233) | YES  |     | NULL    |       |
| TopperRank       | int          | YES  |     | NULL    |       |
| TopperMarks      | int          | YES  |     | NULL    |       |
| TopperPercantage | int          | YES  |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+


mysql> select * from Toppers;
+----------+---------------+------------+-------------+------------------+
| TopperId | TopperName    | TopperRank | TopperMarks | TopperPercantage |
+----------+---------------+------------+-------------+------------------+
|        9 | Geeta         |        418 |         976 |               95 |
|       12 | SudhakarReddy |        431 |         989 |               98 |
|       78 | Emma          |        898 |         954 |               91 |
|       89 | Maya          |        911 |         989 |               90 |
|       98 | Sadie         |        401 |         899 |               89 |
+----------+---------------+------------+-------------+------------------+


mysql> select avg(TopperId)
    -> from Toppers
    -> ;
+---------------+
| avg(TopperId) |
+---------------+
|       57.2000 |
+---------------+


mysql> select avg(TopperPercantage) from Toppers;
+-----------------------+
| avg(TopperPercantage) |
+-----------------------+
|               92.6000 |
+-----------------------+
1 row in set (0.00 sec)


mysql> select avg(TopperRank) as Rank_Avaerage 
    -> from Toppers;
+---------------+
| Rank_Avaerage |
+---------------+
|      611.8000 |
+---------------+
