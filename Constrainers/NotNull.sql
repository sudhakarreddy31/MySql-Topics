Not Null Constrain : It is Perticular colume value is not null

synax:-> ProductNumber int not null,




mysql> create tables Product
    -> (
    -> ProductNumber int not null,
    -> ProductName varchar(255),
    -> productColor varchar(90)
    -> );



+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| ProductNumber | int          | NO   |     | NULL    |       |
| ProductName   | varchar(255) | YES  |     | NULL    |       |
| productColor  | varchar(90)  | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+


mysql> insert into Product(ProductName,ProductColor)
    -> values('Moblie Phone','SkyBlue');

ERROR 1364 (HY000): Field 'ProductNumber' doesn't have a default value


insert into Product(ProductNumber,ProductName,ProductColor) 
values(123,'Moblie Phone','SkyBlue');

mysql> select*from Product;
+---------------+--------------+--------------+
| ProductNumber | ProductName  | productColor |
+---------------+--------------+--------------+
|           123 | Moblie Phone | SkyBlue      |
+---------------+--------------+--------------+

