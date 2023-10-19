create table Teachers ( 
    TeacharId Int Not Null, 
    TeacherName varchar(25), 
    TeacherNumber BigInt, 
    TeacherSubject varchar(25));

mysql> desc Teachers;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| TeacharId      | int         | NO   |     | NULL    |       |
| TeacherName    | varchar(25) | YES  |     | NULL    |       |
| TeacherNumber  | bigint      | YES  |     | NULL    |       |
| TeacherSubject | varchar(25) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+


mysql> insert into Teachers(TeacharId,TeacherName,TeacherNumber,TeacherSubject) 
values(123,'SadieSink',9090909090,'Mathes');


mysql> select * from Teachers;
+-----------+-------------+---------------+----------------+
| TeacharId | TeacherName | TeacherNumber | TeacherSubject |
+-----------+-------------+---------------+----------------+
|       123 | SadieSink   |    9090909090 | Mathes         |
+-----------+-------------+---------------+----------------+


mysql> create index demoindex
    -> on Teachers(TeacherName);


show indexes from Teachers;

+----------+------------+-----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table    | Non_unique | Key_name  | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+----------+------------+-----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Teachers |          1 | demoindex |            1 | TeacherName | A         |           1 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+----------+------------+-----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+



mysql> create index DemoTeachers
        on Teachers(TeacherNumber,TeacherSubject);


mysql> show indexes from Teachers;
+----------+------------+--------------+--------------+----------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table    | Non_unique | Key_name     | Seq_in_index | Column_name    | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+----------+------------+--------------+--------------+----------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Teachers |          1 | demoindex    |            1 | TeacherName    | A         |           1 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| Teachers |          1 | DemoTeachers |            1 | TeacherNumber  | A         |           1 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| Teachers |          1 | DemoTeachers |            2 | TeacherSubject | A         |           1 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+----------+------------+--------------+--------------+----------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+


mysql> drop index demoindex on Teachers;


mysql> show indexes from Teachers;
+----------+------------+--------------+--------------+----------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table    | Non_unique | Key_name     | Seq_in_index | Column_name    | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+----------+------------+--------------+--------------+----------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Teachers |          1 | DemoTeachers |            1 | TeacherNumber  | A         |           1 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| Teachers |          1 | DemoTeachers |            2 | TeacherSubject | A         |           1 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+----------+------------+--------------+--------------+----------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+