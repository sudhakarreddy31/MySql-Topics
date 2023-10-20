mysql> select *from Employee;
+-------+----------------+----------+-------------+--------+---------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge | EmpZone |
+-------+----------------+----------+-------------+--------+---------+
|   400 | Sadie          | Sink     | IT          |     18 | South   |
|   405 | GeethaAnajli   | bandi    | Testing     |     28 | North   |
|   418 | Geeta Reddy    | Gurram   | Devops      |     22 | East    |
|   431 | Sudhakar Reddy | Moola    | Development |     24 | West    |
|   438 | Harika         | Padukola | Hr's        |     30 | East    |
|   444 | Ashiwtha       | Seelam   | Devops      |     27 | South   |
+-------+----------------+----------+-------------+--------+---------+



mysql> select * from Employee where Firstname like'%S%';
+-------+----------------+----------+-------------+--------+---------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge | EmpZone |
+-------+----------------+----------+-------------+--------+---------+
|   400 | Sadie          | Sink     | IT          |     18 | South   |
|   431 | Sudhakar Reddy | Moola    | Development |     24 | West    |
|   444 | Ashiwtha       | Seelam   | Devops      |     27 | South   |
+-------+----------------+----------+-------------+--------+---------+


mysql> select * from Employee where Firstname like'S%';
+-------+----------------+----------+-------------+--------+---------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge | EmpZone |
+-------+----------------+----------+-------------+--------+---------+
|   400 | Sadie          | Sink     | IT          |     18 | South   |
|   431 | Sudhakar Reddy | Moola    | Development |     24 | West    |
+-------+----------------+----------+-------------+--------+---------+
2 rows in set (0.00 sec)


mysql> select * from Employee where EmpDept like'D%';
+-------+----------------+----------+-------------+--------+---------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge | EmpZone |
+-------+----------------+----------+-------------+--------+---------+
|   418 | Geeta Reddy    | Gurram   | Devops      |     22 | East    |
|   431 | Sudhakar Reddy | Moola    | Development |     24 | West    |
|   444 | Ashiwtha       | Seelam   | Devops      |     27 | South   |
+-------+----------------+----------+-------------+--------+---------+
3 rows in set (0.00 sec)


mysql> select * from Employee where FirstName like'Gee%';
+-------+--------------+----------+---------+--------+---------+
| EmpID | FirstName    | LastName | EmpDept | EmpAge | EmpZone |
+-------+--------------+----------+---------+--------+---------+
|   405 | GeethaAnajli | bandi    | Testing |     28 | North   |
|   418 | Geeta Reddy  | Gurram   | Devops  |     22 | East    |
+-------+--------------+----------+---------+--------+---------+


mysql> select * from Employee where FirstName like'%Reddy';
+-------+----------------+----------+-------------+--------+---------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge | EmpZone |
+-------+----------------+----------+-------------+--------+---------+
|   418 | Geeta Reddy    | Gurram   | Devops      |     22 | East    |
|   431 | Sudhakar Reddy | Moola    | Development |     24 | West    |
+-------+----------------+----------+-------------+--------+---------+


mysql> select * from Employee where FirstName like'___ie';
+-------+-----------+----------+---------+--------+---------+
| EmpID | FirstName | LastName | EmpDept | EmpAge | EmpZone |
+-------+-----------+----------+---------+--------+---------+
|   400 | Sadie     | Sink     | IT      |     18 | South   |
+-------+-----------+----------+---------+--------+---------+


mysql> select * from Employee where EmpZone like'___th';
+-------+--------------+----------+---------+--------+---------+
| EmpID | FirstName    | LastName | EmpDept | EmpAge | EmpZone |
+-------+--------------+----------+---------+--------+---------+
|   400 | Sadie        | Sink     | IT      |     18 | South   |
|   405 | GeethaAnajli | bandi    | Testing |     28 | North   |
|   444 | Ashiwtha     | Seelam   | Devops  |     27 | South   |
+-------+--------------+----------+---------+--------+---------+