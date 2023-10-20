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



mysql> select * from Employee
    -> where EmpAge between 25 and 30
    -> ;
+-------+--------------+----------+---------+--------+---------+
| EmpID | FirstName    | LastName | EmpDept | EmpAge | EmpZone |
+-------+--------------+----------+---------+--------+---------+
|   405 | GeethaAnajli | bandi    | Testing |     28 | North   |
|   438 | Harika       | Padukola | Hr's    |     30 | East    |
|   444 | Ashiwtha     | Seelam   | Devops  |     27 | South   |
+-------+--------------+----------+---------+--------+---------+


mysql> select * from Employee where EmpAge between 10 and 24;
+-------+----------------+----------+-------------+--------+---------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge | EmpZone |
+-------+----------------+----------+-------------+--------+---------+
|   400 | Sadie          | Sink     | IT          |     18 | South   |
|   418 | Geeta Reddy    | Gurram   | Devops      |     22 | East    |
|   431 | Sudhakar Reddy | Moola    | Development |     24 | West    |
+-------+----------------+----------+-------------+--------+---------+



 select * from Employee where EmpAge not between 10 and 24;
+-------+--------------+----------+---------+--------+---------+
| EmpID | FirstName    | LastName | EmpDept | EmpAge | EmpZone |
+-------+--------------+----------+---------+--------+---------+
|   405 | GeethaAnajli | bandi    | Testing |     28 | North   |
|   438 | Harika       | Padukola | Hr's    |     30 | East    |
|   444 | Ashiwtha     | Seelam   | Devops  |     27 | South   |
+-------+--------------+----------+---------+--------+---------+


mysql> select * from Employee where EmpAge not between 25 and 30;
+-------+----------------+----------+-------------+--------+---------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge | EmpZone |
+-------+----------------+----------+-------------+--------+---------+
|   400 | Sadie          | Sink     | IT          |     18 | South   |
|   418 | Geeta Reddy    | Gurram   | Devops      |     22 | East    |
|   431 | Sudhakar Reddy | Moola    | Development |     24 | West    |
+-------+----------------+----------+-------------+--------+---------+
