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


mysql> select *from Employee
    -> where EmpZone in('North','East');
+-------+--------------+----------+---------+--------+---------+
| EmpID | FirstName    | LastName | EmpDept | EmpAge | EmpZone |
+-------+--------------+----------+---------+--------+---------+
|   405 | GeethaAnajli | bandi    | Testing |     28 | North   |
|   418 | Geeta Reddy  | Gurram   | Devops  |     22 | East    |
|   438 | Harika       | Padukola | Hr's    |     30 | East    |
+-------+--------------+----------+---------+--------+---------+


select * from Employee where EmpAge in (25,30);
+-------+-----------+----------+---------+--------+---------+
| EmpID | FirstName | LastName | EmpDept | EmpAge | EmpZone |
+-------+-----------+----------+---------+--------+---------+
|   438 | Harika    | Padukola | Hr's    |     30 | East    |
+-------+-----------+----------+---------+--------+---------+



mysql> select * from Employee
    -> where EmpDept not in ('Devops','It');
+-------+----------------+----------+-------------+--------+---------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge | EmpZone |
+-------+----------------+----------+-------------+--------+---------+
|   405 | GeethaAnajli   | bandi    | Testing     |     28 | North   |
|   431 | Sudhakar Reddy | Moola    | Development |     24 | West    |
|   438 | Harika         | Padukola | Hr's        |     30 | East    |
+-------+----------------+----------+-------------+--------+---------+
