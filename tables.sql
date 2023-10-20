Create New Table In MySql


create table Employee(
    EmpID int,
    FirstName Varchar(255),
    LastName Varchar(255),
    EmpDept Varchar(255)
);

desc Employee;       -----> Employee Table Strature

mysql> desc Employee;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| EmpID     | int          |  YES  |    | NULL    |       |
| FirstName | varchar(255) | YES  |     | NULL    |       |
| LastName  | varchar(255) | YES  |     | NULL    |       |
| EmpDept   | varchar(255) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+


-- insert values in Exting Table

insert into Employee(EmpID,FirstName,LastName,EmpDept) 
values(431,'Sudhakar Reddy','Moola','Development');



-- show All Data In Table

select * from Employee;


mysql> select * from Employee;
+-------+----------------+----------+-------------+
| EmpID | FirstName      | LastName | EmpDept     |
+-------+----------------+----------+-------------+
|   431 | Sudhakar Reddy | Moola    | Development |
|   418 | Geeta Reddy    | Gurram   | Develops    |
|   400 | Sadie          | Sink     | IT          |
+-------+----------------+----------+-------------+

-- select Perticular Columes in Table


mysql> select EmpID,FirstName,EmpDept from Employee;
+-------+----------------+-------------+
| EmpID | FirstName      | EmpDept     |
+-------+----------------+-------------+
|   431 | Sudhakar Reddy | Development |
|   418 | Geeta Reddy    | Develops    |
|   400 | Sadie          | IT          |
+-------+----------------+-------------+


mysql> select EmpID,EmpDept from Employee;
+-------+-------------+
| EmpID | EmpDept     |
+-------+-------------+
|   431 | Development |
|   418 | Develops    |
|   400 | IT          |
+-------+-------------+




-- if Want Delete Table from database for command is 

drop table Employee;

select* from Employee;
EmptySet()

