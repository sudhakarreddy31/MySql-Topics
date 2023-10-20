
mysql> select * from series
    -> limit 1;
+----------+---------------+-------------+-----------------+
| seriesId | seriesname    | serieshero  | seriesheroin    |
+----------+---------------+-------------+-----------------+
|        1 | StangerThings | FinnWorfold | MillyBobbyBrown |
+----------+---------------+-------------+-----------------+


mysql>  select * from Employee 
        limit 3;
+-------+----------------+----------+-------------+--------+---------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge | EmpZone |
+-------+----------------+----------+-------------+--------+---------+
|   400 | Sadie          | Sink     | IT          |     18 | South   |
|   418 | Geeta Reddy    | Gurram   | Devops      |     22 | West    |
|   431 | Sudhakar Reddy | Moola    | Development |     24 | West    |
+-------+----------------+----------+-------------+--------+---------+


mysql>  select * from Toppers 
        limit 4;
+----------+---------------+------------+-------------+------------------+
| TopperId | TopperName    | TopperRank | TopperMarks | TopperPercantage |
+----------+---------------+------------+-------------+------------------+
|        9 | Geeta         |        418 |         976 |               95 |
|       12 | SudhakarReddy |        431 |         989 |               98 |
|       78 | Emma          |        898 |         954 |               91 |
|       89 | Maya          |        911 |         789 |               90 |
+----------+---------------+------------+-------------+------------------+

