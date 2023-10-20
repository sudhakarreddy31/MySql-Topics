mysql> select * from Employee;
+-------+----------------+----------+-------------+--------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge |
+-------+----------------+----------+-------------+--------+
|   400 | Sadie          | Sink     | IT          |     18 |
|   405 | GeethaAnajli   | bandi    | Testing     |     28 |
|   418 | Geeta Reddy    | Gurram   | Devops      |     22 |
|   431 | Sudhakar Reddy | Moola    | Development |     24 |
|   438 | Harika         | Padukola | Hr's        |     30 |
|   444 | Ashiwtha       | Seelam   | Devops      |     27 |
+-------+----------------+----------+-------------+--------+


 select count(*) from Employee;
+----------+
| count(*) |
+----------+
|        6 |
+----------+



 select count(EmpAge)
    -> from Employee
    -> where EmpAge>25;
+---------------+
| count(EmpAge) |
+---------------+
|             3 |
+---------------+


mysql> select count(EmpAge)
    -> from Employee
    -> where EmpAge<24
    -> ;
+---------------+
| count(EmpAge) |
+---------------+
|             2 |
+---------------+


mysql> select count(EmpAge) from Employee where EmpAge<=24;
+---------------+
| count(EmpAge) |
+---------------+
|             3 |
+---------------+



mysql> select count(EmpDept)
    -> from Employee
    -> where EmpDept='Devops'
    -> ;
+----------------+
| count(EmpDept) |
+----------------+
|              2 |
+----------------+
