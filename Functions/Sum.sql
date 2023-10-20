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


mysql> select sum(TopperId
    -> )
    -> from Toppers;
+----------------+
| sum(TopperId
) |
+----------------+
|            286 |
+----------------+
1 row in set (0.00 sec)



mysql> select sum(TopperRank)as Rank_Sum_Value
    -> from Toppers
    -> ;
+----------------+
| Rank_Sum_Value |
+----------------+
|           3059 |
+----------------+



mysql> select sum(TopperMarks) as Total_Marks_of_Toppers
    -> from Toppers
    -> ;
+------------------------+
| Total_Marks_of_Toppers |
+------------------------+
|                   4807 |
+------------------------+
