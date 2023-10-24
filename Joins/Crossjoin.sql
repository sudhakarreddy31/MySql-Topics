The CROSS JOIN keyword returns all records from both tables (table1 and table2).

file:///home/sudhakarreddy/MySql-Topics/Joins/Crossjoin.jpeg


In a CROSS JOIN, each row from the first table is combined with every row from the second table, resulting in every possible combination of rows


mysql> select * from Customers;
+-------------+---------+-----------+
| Customer_Id | Name    | Location  |
+-------------+---------+-----------+
|           1 | Chinna  | Hyderabad |
|           2 | Sadie   | kanas     |
|           3 | Gayatri | Pune      |
|           4 | Emma    | Kantyo    |
+-------------+---------+-----------+


mysql> select * from Customers;
mysql> select * from Orders;
+----+-------------+------------+
| Id | Customer_Id | Oder_Date  |
+----+-------------+------------+
|  1 | 2           | 10-04-2022 |
|  2 | 3           | 1-05-2023  |
|  3 | 1           | 27-12-2024 |
|  4 | 4           | 13-11-1997 |
+----+-------------+------------+


SELECT column_name(s)
FROM table1
CROSS JOIN table2;




mysql> select Customers.Customer_Id,Customers.Name,Orders.Id,Orders.Oder_Date,Customers.Locations
    -> from Customers
    -> cross join Orders;

+-------------+---------+----+------------+-----------+
| Customer_Id | Name    | Id | Oder_Date  | Location  |
+-------------+---------+----+------------+-----------+
|           4 | Emma    |  1 | 10-04-2022 | Kantyo    |
|           3 | Gayatri |  1 | 10-04-2022 | Pune      |
|           2 | Sadie   |  1 | 10-04-2022 | kanas     |
|           1 | Chinna  |  1 | 10-04-2022 | Hyderabad |
|           4 | Emma    |  2 | 1-05-2023  | Kantyo    |
|           3 | Gayatri |  2 | 1-05-2023  | Pune      |
|           2 | Sadie   |  2 | 1-05-2023  | kanas     |
|           1 | Chinna  |  2 | 1-05-2023  | Hyderabad |
|           4 | Emma    |  3 | 27-12-2024 | Kantyo    |
|           3 | Gayatri |  3 | 27-12-2024 | Pune      |
|           2 | Sadie   |  3 | 27-12-2024 | kanas     |
|           1 | Chinna  |  3 | 27-12-2024 | Hyderabad |
|           4 | Emma    |  4 | 13-11-1997 | Kantyo    |
|           3 | Gayatri |  4 | 13-11-1997 | Pune      |
|           2 | Sadie   |  4 | 13-11-1997 | kanas     |
|           1 | Chinna  |  4 | 13-11-1997 | Hyderabad |
+-------------+---------+----+------------+-----------+
