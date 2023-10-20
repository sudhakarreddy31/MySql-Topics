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



mysql> select EmpAge as Employee_Age from Employee;
+--------------+
| Employee_Age |
+--------------+
|           18 |
|           28 |
|           22 |
|           24 |
|           30 |
|           27 |
+--------------+


 select Firstname as Employee_First_name , EmpDept as Employee_Depertment from Employee;
+---------------------+---------------------+
| Employee_First_name | Employee_Depertment |
+---------------------+---------------------+
| Sadie               | IT                  |
| GeethaAnajli        | Testing             |
| Geeta Reddy         | Devops              |
| Sudhakar Reddy      | Development         |
| Harika              | Hr's                |
| Ashiwtha            | Devops              |
+---------------------+---------------------+


 select EmpID as Employee_Idenfication, Firstname as Employee_First_name ,
 EmpDept as Employee_
+-----------------------+---------------------+---------------------+
| Employee_Idenfication | Employee_First_name | Employee_Depertment |
+-----------------------+---------------------+---------------------+
|                   400 | Sadie               | IT                  |
|                   405 | GeethaAnajli        | Testing             |
|                   418 | Geeta Reddy         | Devops              |
|                   431 | Sudhakar Reddy      | Development         |
|                   438 | Harika              | Hr's                |
|                   444 | Ashiwtha            | Devops              |
+-----------------------+---------------------+---------------------+
