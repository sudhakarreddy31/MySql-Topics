create table phones( 
    PhoneId int Not Null, 
    PhoneName varchar(25), 
    Phonemodel varchar(25), 
    phonecolor varchar(25), 
    unique(PhoneId));

mysql> desc phones;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| PhoneId    | int         | NO   | PRI | NULL    |       |
| PhoneName  | varchar(25) | YES  |     | NULL    |       |
| Phonemodel | varchar(25) | YES  |     | NULL    |       |
| phonecolor | varchar(25) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+


mysql> insert into phones(PhoneName,Phonemodel,phonecolor) values ('SamSung','F15','Black');
ERROR 1364 (HY000): Field 'PhoneId' doesn't have a default value





mysql> select*from phones;
+---------+-----------+-------------+------------+
| PhoneId | PhoneName | Phonemodel  | phonecolor |
+---------+-----------+-------------+------------+
|       1 | Redmi     | Note9ProMax | Grey       |
|       2 | IPhone    | 15ProMax    | SkyBlue    |
+---------+-----------+-------------+------------+

