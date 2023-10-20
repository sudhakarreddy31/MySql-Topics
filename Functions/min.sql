mysql> select * from Toppers;
+----------+---------------+------------+-------------+------------------+
| TopperId | TopperName    | TopperRank | TopperMarks | TopperPercantage |
+----------+---------------+------------+-------------+------------------+
|        9 | Geeta         |        418 |         976 |               95 |
|       12 | SudhakarReddy |        431 |         989 |               98 |
|       78 | Emma          |        898 |         954 |               91 |
|       89 | Maya          |        911 |         789 |               90 |
|       98 | Sadie         |        401 |         899 |               89 |
+----------+---------------+------------+-------------+------------------+
5 rows in set (0.00 sec)

mysql> select min(TopperRank)
    -> from Toppers
    -> ;
+-----------------+
| min(TopperRank) |
+-----------------+
|             401 |
+-----------------+


mysql> select min(TopperPercantage) from Toppers;
+-----------------------+
| min(TopperPercantage) |
+-----------------------+
|                    89 |
+-----------------------+


mysql> select min(TopperId) from Toppers;
+---------------+
| min(TopperId) |
+---------------+
|             9 |
+---------------+


mysql> select min(TopperName) from Toppers;
+-----------------+
| min(TopperName) |
+-----------------+
| Emma            |
+-----------------+
