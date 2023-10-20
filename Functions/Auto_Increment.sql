
mysql> CREATE TABLE series (
    ->     seriesId INT NOT NULL AUTO_INCREMENT,
    ->     seriesname VARCHAR(25),
    ->     serieshero VARCHAR(25),
    ->     seriesheroin VARCHAR(20),
    ->     PRIMARY KEY (seriesId)
    -> );


mysql> desc series;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| seriesId     | int         | NO   | PRI | NULL    | auto_increment |
| seriesname   | varchar(25) | YES  |     | NULL    |                |
| serieshero   | varchar(25) | YES  |     | NULL    |                |
| seriesheroin | varchar(20) | YES  |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

mysql> insert into series(seriesname,serieshero,seriesheroin)
    -> values('StangerThings','FinnWorfold','MillyBobbyBrown');


mysql> select * from series;
+----------+---------------+-------------+-----------------+
| seriesId | seriesname    | serieshero  | seriesheroin    |
+----------+---------------+-------------+-----------------+
|        1 | StangerThings | FinnWorfold | MillyBobbyBrown |
+----------+---------------+-------------+-----------------+
1 row in set (0.00 sec)


mysql> insert into series(seriesname,serieshero,seriesheroin) 
values('PyschoLust','SudhakarReddy','SadieSink');


mysql> select * from series;
+----------+---------------+---------------+-----------------+
| seriesId | seriesname    | serieshero    | seriesheroin    |
+----------+---------------+---------------+-----------------+
|        1 | StangerThings | FinnWorfold   | MillyBobbyBrown |
|        2 | PyschoLust    | SudhakarReddy | SadieSink       |
+----------+---------------+---------------+-----------------+
2 rows in set (0.00 sec)
