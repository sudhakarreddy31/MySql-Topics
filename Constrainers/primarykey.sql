mysql> CREATE TABLE Students (
    ->     StudentID INT NOT NULL,
    ->     StudentFirstName VARCHAR(244),
    ->     StudentLastName VARCHAR(244),
    ->     StudentBranch VARCHAR(244),
    ->     StudentRollNumber INT,
    ->     PRIMARY KEY (StudentRollNumber)
    -> );


mysql> desc Students;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| StudentID         | int          | NO   |     | NULL    |       |
| StudentFirstName  | varchar(244) | YES  |     | NULL    |       |
| StudentLastName   | varchar(244) | YES  |     | NULL    |       |
| StudentBranch     | varchar(244) | YES  |     | NULL    |       |
| StudentRollNumber | int          | NO   | PRI | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+



mysql> select*from Students;
+-----------+------------------+-----------------+---------------+-------------------+
| StudentID | StudentFirstName | StudentLastName | StudentBranch | StudentRollNumber |
+-----------+------------------+-----------------+---------------+-------------------+
|         1 | SudhakarReddy    | Moola           | ECE           |               431 |
+-----------+------------------+-----------------+---------------+-------------------+



insert into Students(StudentID,StudentFirstName,StudentLastName,Studentbranch,StudentRollNumber) 
values(2,'Gayatri','Seelam','EEE',431);
ERROR 1062 (23000): Duplicate entry '431' for key 'Students.PRIMARY'

+-----------+------------------+-----------------+---------------+-------------------+
| StudentID | StudentFirstName | StudentLastName | StudentBranch | StudentRollNumber |
+-----------+------------------+-----------------+---------------+-------------------+
|         2 | Gayatri          | Seelam          | EEE           |               430 |
|         1 | SudhakarReddy    | Moola           | ECE           |               431 |
+-----------+------------------+----------
