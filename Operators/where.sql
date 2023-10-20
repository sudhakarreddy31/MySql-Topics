 select *from Employee;
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


select *from Employee  
where EmpAge<=24;
+-------+----------------+----------+-------------+--------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge |
+-------+----------------+----------+-------------+--------+
|   400 | Sadie          | Sink     | IT          |     18 |
|   418 | Geeta Reddy    | Gurram   | Devops      |     22 |
|   431 | Sudhakar Reddy | Moola    | Development |     24 |
+-------+----------------+----------+-------------+--------+


mysql> select * from Employee
    -> where EmpDept='Devops';
+-------+-------------+----------+---------+--------+
| EmpID | FirstName   | LastName | EmpDept | EmpAge |
+-------+-------------+----------+---------+--------+
|   418 | Geeta Reddy | Gurram   | Devops  |     22 |
|   444 | Ashiwtha    | Seelam   | Devops  |     27 |
+-------+-------------+----------+---------+--------+


select * from Employee 
where LastName='Moola' or Firstname='Geeta Reddy';
+-------+----------------+----------+-------------+--------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge |
+-------+----------------+----------+-------------+--------+
|   418 | Geeta Reddy    | Gurram   | Devops      |     22 |
|   431 | Sudhakar Reddy | Moola    | Development |     24 |
+-------+----------------+----------+-------------+--------+
