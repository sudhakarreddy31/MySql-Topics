The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records (if any) from the left table (table1).



file:///home/sudhakarreddy/MySql-Topics/Joins/Rightjoin.jpeg



SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;


mysql> select * from Orders;
+----+-------------+------------+
| Id | Customer_Id | Oder_Date  |
+----+-------------+------------+
|  1 | 2           | 10-04-2022 |
|  2 | 3           | 1-05-2023  |
|  3 | 1           | 27-12-2024 |
|  4 | 4           | 13-11-1997 |
+----+-------------+------------+


mysql> select * from Customers;
+-------------+---------+-----------+
| Customer_Id | Name    | Location  |
+-------------+---------+-----------+
|           1 | Chinna  | Hyderabad |
|           2 | Sadie   | kanas     |
|           3 | Gayatri | Pune      |
|           4 | Emma    | Kantyo    |
+-------------+---------+-----------+


mysql> select Orders.Customer_id,Oder_Date,Customers.Name,Customers.Location
    -> from Orders
    -> right join Customers
    -> on Orders.Customer_Id = Customers.Customer_Id;
+-------------+------------+---------+-----------+
| Customer_id | Oder_Date  | Name    | Location  |
+-------------+------------+---------+-----------+
| 1           | 27-12-2024 | Chinna  | Hyderabad |
| 2           | 10-04-2022 | Sadie   | kanas     |
| 3           | 1-05-2023  | Gayatri | Pune      |
| 4           | 13-11-1997 | Emma    | Kantyo    |
+-------------+------------+---------+-----------+


select Orders.Customer_id,Oder_Date,Customers.Name,Customers.Location
from Customers
right join Orders
on Orders.Customer_Id = Customers.Customer_Id;