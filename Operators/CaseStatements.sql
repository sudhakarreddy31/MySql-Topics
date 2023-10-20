mysql> select *from Employee;
+-------+----------------+----------+-------------+--------+---------+
| EmpID | FirstName      | LastName | EmpDept     | EmpAge | EmpZone |
+-------+----------------+----------+-------------+--------+---------+
|   400 | Sadie          | Sink     | IT          |     18 | South   |
|   405 | GeethaAnajli   | bandi    | Testing     |     28 | North   |
|   418 | Geeta Reddy    | Gurram   | Devops      |     22 | East    |
|   431 | Sudhakar Reddy | Moola    | Development |     24 | West    |
|   438 | Harika         | Padukola | Hr's        |     30 | East    |
|   444 | Ashiwtha       | Seelam   | Devops      |     27 | South   |
+-------+----------------+----------+-------------+--------+---------+




mysql> SELECT 
    ->     FirstName,
    ->     LastName,
    ->     EmpAge,
    ->     CASE
    ->         WHEN EmpAge > 25 THEN 'Employee With Experience, Eligible For Sr. Profile'
    ->         WHEN EmpAge = 25 THEN 'Employee is Mid-Experienced Eligible'
    ->         ELSE 'Freshers...!'
    ->     END AS Eligibility
    -> FROM Employee;
+----------------+----------+--------+----------------------------------------------------+
| FirstName      | LastName | EmpAge | Eligibility                                        |
+----------------+----------+--------+----------------------------------------------------+
| Sadie          | Sink     |     18 | Freshers...!                                       |
| GeethaAnajli   | bandi    |     28 | Employee With Experience, Eligible For Sr. Profile |
| Geeta Reddy    | Gurram   |     22 | Freshers...!                                       |
| Sudhakar Reddy | Moola    |     24 | Freshers...!                                       |
| Harika         | Padukola |     30 | Employee With Experience, Eligible For Sr. Profile |
| Ashiwtha       | Seelam   |     27 | Employee With Experience, Eligible For Sr. Profile |
+----------------+----------+--------+----------------------------------------------------+




mysql> SELECT
    ->     FirstName,
    ->     LastName,
    ->     EmpDept,
    ->     CASE
    ->         WHEN EmpDept = 'IT' THEN 'IT Department'
    ->         WHEN EmpDept = 'Testing' THEN 'Testing Department'
    ->         WHEN EmpDept = 'Development' THEN 'Development Department'
    ->         ELSE 'Other Department'
    ->     END AS DepartmentCategory
    -> FROM Employee;
+----------------+----------+-------------+------------------------+
| FirstName      | LastName | EmpDept     | DepartmentCategory     |
+----------------+----------+-------------+------------------------+
| Sadie          | Sink     | IT          | IT Department          |
| GeethaAnajli   | bandi    | Testing     | Testing Department     |
| Geeta Reddy    | Gurram   | Devops      | Other Department       |
| Sudhakar Reddy | Moola    | Development | Development Department |
| Harika         | Padukola | Hr's        | Other Department       |
| Ashiwtha       | Seelam   | Devops      | Other Department       |
+----------------+----------+-------------+------------------------+
