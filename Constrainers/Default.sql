create table Employees ( 
    EmpID int not null, 
    EmpFirstname varchar(233), 
    EmpLasname varchar(233), 
    EmpDept varchar(233) default 'It' );


mysql> desc Employees;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| EmpID        | int          | NO   |     | NULL    |       |
| EmpFirstname | varchar(233) | YES  |     | NULL    |       |
| EmpLasname   | varchar(233) | YES  |     | NULL    |       |
| EmpDept      | varchar(233) | YES  |     | It      |       |
+--------------+--------------+------+-----+---------+-------+


mysql> insert into Employees(EmpID,EmpFirstname,EmpLasname) values(1,'Emma','Waston');


mysql> select * from Employees;
+-------+--------------+------------+---------+
| EmpID | EmpFirstname | EmpLasname | EmpDept |
+-------+--------------+------------+---------+
|     1 | Emma         | Waston     | It      |
+-------+--------------+------------+---------+


mysql> insert into Employees(EmpID,EmpFirstname,EmpLasname,EmpDept) 
values(2,'Emma','Mayers','DevOps');

mysql> select * from Employees;
+-------+--------------+------------+---------+
| EmpID | EmpFirstname | EmpLasname | EmpDept |
+-------+--------------+------------+---------+
|     1 | Emma         | Waston     | It      |
|     2 | Emma         | Mayers     | DevOps  |
+-------+--------------+------------+---------+
