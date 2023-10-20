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

mysql> select max(TopperRank)
    -> from Toppers
    -> ;
+-----------------+
| max(TopperRank) |
+-----------------+
|             911 |
+-----------------+


mysql> select max(TopperPercantage) from Toppers;
+-----------------------+
| max(TopperPercantage) |
+-----------------------+
|                    98 |
+-----------------------+



mysql> select max(TopperMarks) from Toppers;
+------------------+
| max(TopperMarks) |
+------------------+
|              989 |
+------------------+
