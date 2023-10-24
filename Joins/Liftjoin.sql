The LEFT JOIN keyword returns all records from the left table (table1), and the matching records (if any) from the right table (table2).

file:///home/sudhakarreddy/MySql-Topics/Joins/Leftjoin.jpeg


+-------------+---------+-----------+
| Customer_Id | Name    | Location  |
+-------------+---------+-----------+
|           1 | Chinna  | Hyderabad |
|           2 | Sadie   | kanas     |
|           3 | Gayatri | Pune      |
|           4 | Emma    | Kantyo    |
+-------------+---------+-----------+


mysql> select * from Orders;
+----+-------------+------------+
| Id | Customer_Id | Oder_Date  |
+----+-------------+------------+
|  1 | 2           | 10-04-2022 |
|  2 | 3           | 1-05-2023  |
|  3 | 1           | 27-12-2024 |
|  4 | 4           | 13-11-1997 |
+----+-------------+------------+

synax:

SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;


mysql> select Customers.Customer_id as Id_Number ,Customers.Location
    -> from Customers
    -> left join Orders
    -> on Customers.Customer_id=Orders.Customer_id;
+-----------+-----------+
| Id_Number | Location  |
+-----------+-----------+
|         1 | Hyderabad |
|         2 | kanas     |
|         3 | Pune      |
|         4 | Kantyo    |
+-----------+-----------+



mysql> select Customers.Customer_id as Id_Number ,Customers.Location,Orders.Oder_Date
    -> from Customers
    -> left join Orders
    -> on Customers.Customer_id=Orders.Customer_id;
+-----------+-----------+------------+
| Id_Number | Location  | Oder_Date  |
+-----------+-----------+------------+
|         1 | Hyderabad | 27-12-2024 |
|         2 | kanas     | 10-04-2022 |
|         3 | Pune      | 1-05-2023  |
|         4 | Kantyo    | 13-11-1997 |
+-----------+-----------+------------+



mysql> select Customers.Customer_id as Id_Number ,Customers.Location,Orders.Oder_Date,Customers.Name
    -> from Customers
    -> left join Orders
    -> on Customers.Customer_id=Orders.Customer_id;
+-----------+-----------+------------+---------+
| Id_Number | Location  | Oder_Date  | Name    |
+-----------+-----------+------------+---------+
|         1 | Hyderabad | 27-12-2024 | Chinna  |
|         2 | kanas     | 10-04-2022 | Sadie   |
|         3 | Pune      | 1-05-2023  | Gayatri |
|         4 | Kantyo    | 13-11-1997 | Emma    |
+-----------+-----------+------------+---------+
