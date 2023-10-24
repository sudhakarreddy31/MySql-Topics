INNER JOIN: Returns records that have matching values in both tables

file:///home/sudhakarreddy/MySql-Topics/Joins/Innerjoin.jpeg



synax:

SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;



mysql> select * from Customers;         ----> CustomersTable
+-------------+---------+-----------+
| Customer_Id | Name    | Location  |
+-------------+---------+-----------+
|           1 | Chinna  | Hyderabad |
|           2 | Sadie   | kanas     |
|           3 | Gayatri | Pune      |
|           4 | Emma    | Kantyo    |
+-------------+---------+-----------+

4 rows in set (0.00 sec)



mysql> select * from Orders;    ---->OrdersTable
+----+-------------+------------+
| Id | Customer_Id | Oder_Date  |
+----+-------------+------------+
|  1 | 2           | 10-04-2022 |
|  2 | 3           | 1-05-2023  |
|  3 | 1           | 27-12-2024 |
|  4 | 4           | 13-11-1997 |
+----+-------------+------------+

4 rows in set (0.00 sec)


mysql> select Customers.Customer_Id,Customers.Name
    -> from Customers
    -> inner join Orders
    -> on Customers.Customer_Id=Orders.Customer_Id;
+-------------+---------+
| Customer_Id | Name    |
+-------------+---------+
|           2 | Sadie   |
|           3 | Gayatri |
|           1 | Chinna  |
|           4 | Emma    |
+-------------+---------+





















