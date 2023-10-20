mysql> select*from Employee;
+-------+----------------+----------+-------------+--------+---------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge | EmpZone |
+-------+----------------+----------+-------------+--------+---------+
|   400 | Sadie          | Sink     | IT          |     18 | South   |
|   418 | Geeta Reddy    | Gurram   | Devops      |     22 | East    |
|   431 | Sudhakar Reddy | Moola    | Development |     24 | West    |
|   438 | Harika         | Padukola | Hr's        |     30 | East    |
|   444 | Ashiwtha       | Seelam   | Devops      |     27 | South   |
+-------+----------------+----------+-------------+--------+---------+


mysql> update Employee
set Lastname='Moola' 
where FirstName='Geeta Reddy';         ------>Condition


mysql> select*from Employee;
+-------+----------------+----------+-------------+--------+---------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge | EmpZone |
+-------+----------------+----------+-------------+--------+---------+
|   400 | Sadie          | Sink     | IT          |     18 | South   |
|   418 | Geeta Reddy    | Moola    | Devops      |     22 | East    |
|   431 | Sudhakar Reddy | Moola    | Development |     24 | West    |
|   438 | Harika         | Padukola | Hr's        |     30 | East    |
|   444 | Ashiwtha       | Seelam   | Devops      |     27 | South   |
+-------+----------------+----------+-------------+--------+---------+


mysql> update Employee
    -> set EmpZone='West'
    -> where EmpAge=22;      ------>Condition


mysql> select*from Employee;
+-------+----------------+----------+-------------+--------+---------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge | EmpZone |
+-------+----------------+----------+-------------+--------+---------+
|   400 | Sadie          | Sink     | IT          |     18 | South   |
|   418 | Geeta Reddy    | Moola    | Devops      |     22 | West    |
|   431 | Sudhakar Reddy | Moola    | Development |     24 | West    |
|   438 | Harika         | Padukola | Hr's        |     30 | East    |
|   444 | Ashiwtha       | Seelam   | Devops      |     27 | South   |
+-------+----------------+----------+-------------+--------+---------+


mysql> update Employee 
    -> set EmpDept='Data Analyst' 
    -> where EmpID=444;              ------>Condition


mysql> select*from Employee;
+-------+----------------+----------+--------------+--------+---------+
| EmpID | FirstName      | LastName | EmpDept      | EmpAge | EmpZone |
+-------+----------------+----------+--------------+--------+---------+
|   400 | Sadie          | Sink     | IT           |     18 | South   |
|   418 | Geeta Reddy    | Moola    | Devops       |     22 | West    |
|   431 | Sudhakar Reddy | Moola    | Development  |     24 | West    |
|   438 | Harika         | Padukola | Hr's         |     30 | East    |
|   444 | Ashiwtha       | Seelam   | Data Analyst |     27 | South   |


mysql> update Employee
    -> set LastName='Gurram'
    -> where EmpDept='Devops'                ------>Condition
    -> ;

mysql> select*from Employee;
+-------+----------------+----------+--------------+--------+---------+
| EmpID | FirstName      | LastName | EmpDept      | EmpAge | EmpZone |
+-------+----------------+----------+--------------+--------+---------+
|   400 | Sadie          | Sink     | IT           |     18 | South   |
|   418 | Geeta Reddy    | Gurram   | Devops       |     22 | West    |
|   431 | Sudhakar Reddy | Moola    | Development  |     24 | West    |
|   438 | Harika         | Padukola | Hr's         |     30 | East    |
|   444 | Ashiwtha       | Seelam   | Data Analyst |     27 | South   |
+-------+----------------+----------+--------------+--------+---------+
