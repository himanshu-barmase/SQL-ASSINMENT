


Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 19
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| b119               |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| school             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.01 sec)

mysql> use b119;
Database changed
mysql> show tables;
+----------------+
| Tables_in_b119 |
+----------------+
| bonus          |
| dept           |
| emp            |
| my_table       |
| overtime       |
| sales          |
| salgrade       |
| scores         |
| t              |
| t1             |
| t2             |
+----------------+
11 rows in set (0.01 sec)

mysql> select * from overtime;
+-------------------+------------+-------+
| employee_name     | department | hours |
+-------------------+------------+-------+
| Anthony Bow       | Finance    |    66 |
| Barry Jones       | SCM        |    65 |
| Diane Murphy      | Accounting |    37 |
| Foon Yue Tseng    | Sales      |    65 |
| George Vanauf     | Marketing  |    89 |
| Gerard Bondur     | Finance    |    47 |
| Gerard Hernandez  | Marketing  |    66 |
| Jeff Firrelli     | Accounting |    40 |
| Julie Firrelli    | Sales      |    81 |
| Larry Bott        | SCM        |   100 |
| Leslie Jennings   | IT         |    90 |
| Leslie Thompson   | IT         |    88 |
| Loui Bondur       | Marketing  |    49 |
| Mary Patterson    | Accounting |    74 |
| Pamela Castillo   | SCM        |    96 |
| Steve Patterson   | Sales      |    29 |
| William Patterson | Finance    |    58 |
+-------------------+------------+-------+
17 rows in set (0.00 sec)

mysql> CREATE TABLE basic_pays(
    ->     employee_name VARCHAR(50) NOT NULL,
    ->     department VARCHAR(50) NOT NULL,
    ->     salary INT NOT NULL,
    ->     PRIMARY KEY (employee_name , department)
    -> );
Query OK, 0 rows affected (0.17 sec)

mysql>
mysql>
mysql> INSERT INTO
    ->  basic_pays(employee_name,
    ->                     department,
    ->                     salary)
    -> VALUES
    ->  ('Diane Murphy','Accounting',8435),
    ->  ('Mary Patterson','Accounting',9998),
    ->  ('Jeff Firrelli','Accounting',8992),
    ->  ('William Patterson','Accounting',8870),
    ->  ('Gerard Bondur','Accounting',11472),
    ->  ('Anthony Bow','Accounting',6627),
    ->  ('Leslie Jennings','IT',8113),
    ->  ('Leslie Thompson','IT',5186),
    ->  ('Julie Firrelli','Sales',9181),
    ->  ('Steve Patterson','Sales',9441),
    ->  ('Foon Yue Tseng','Sales',6660),
    ->  ('George Vanauf','Sales',10563),
    ->  ('Loui Bondur','SCM',10449),
    ->  ('Gerard Hernandez','SCM',6949),
    ->  ('Pamela Castillo','SCM',11303),
    ->  ('Larry Bott','SCM',11798),
    ->  ('Barry Jones','SCM',10586);
Query OK, 17 rows affected (0.03 sec)
Records: 17  Duplicates: 0  Warnings: 0

mysql>
mysql>
mysql>
mysql>
mysql>
mysql> select * from basic_table;
ERROR 1146 (42S02): Table 'b119.basic_table' doesn't exist
mysql> select * basic pays;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'basic pays' at line 1
mysql> select * basic_pays;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'basic_pays' at line 1
mysql>
mysql>
mysql> select * from basic_pays;
+-------------------+------------+--------+
| employee_name     | department | salary |
+-------------------+------------+--------+
| Anthony Bow       | Accounting |   6627 |
| Barry Jones       | SCM        |  10586 |
| Diane Murphy      | Accounting |   8435 |
| Foon Yue Tseng    | Sales      |   6660 |
| George Vanauf     | Sales      |  10563 |
| Gerard Bondur     | Accounting |  11472 |
| Gerard Hernandez  | SCM        |   6949 |
| Jeff Firrelli     | Accounting |   8992 |
| Julie Firrelli    | Sales      |   9181 |
| Larry Bott        | SCM        |  11798 |
| Leslie Jennings   | IT         |   8113 |
| Leslie Thompson   | IT         |   5186 |
| Loui Bondur       | SCM        |  10449 |
| Mary Patterson    | Accounting |   9998 |
| Pamela Castillo   | SCM        |  11303 |
| Steve Patterson   | Sales      |   9441 |
| William Patterson | Accounting |   8870 |
+-------------------+------------+--------+
17 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql>
mysql> ^C
mysql> select substring_index(employee_name, ' ', 1) as worker_name from basic_pays;
+-------------+
| worker_name |
+-------------+
| Anthony     |
| Barry       |
| Diane       |
| Foon        |
| George      |
| Gerard      |
| Gerard      |
| Jeff        |
| Julie       |
| Larry       |
| Leslie      |
| Leslie      |
| Loui        |
| Mary        |
| Pamela      |
| Steve       |
| William     |
+-------------+
17 rows in set (0.00 sec)

mysql>
mysql>
mysql> ##. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
mysql>
mysql> select distinct department from basic_pays;
+------------+
| department |
+------------+
| Accounting |
| SCM        |
| Sales      |
| IT         |
+------------+
4 rows in set (0.01 sec)

mysql>
mysql>
mysql> ###Write an SQL query to show the last 5 record from a table.
mysql>
mysql> select * from basic_pays order by salary desc limit 5;
+-----------------+------------+--------+
| employee_name   | department | salary |
+-----------------+------------+--------+
| Larry Bott      | SCM        |  11798 |
| Gerard Bondur   | Accounting |  11472 |
| Pamela Castillo | SCM        |  11303 |
| Barry Jones     | SCM        |  10586 |
| George Vanauf   | Sales      |  10563 |
+-----------------+------------+--------+
5 rows in set (0.01 sec)

mysql> select * from basic_pays order by  desc limit 5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'desc limit 5' at line 1
mysql> SELECT * FROM (SELECT * FROM basic_pays) AS t
    -> ORDER BY 1 DESC
    -> LIMIT 5;
+-------------------+------------+--------+
| employee_name     | department | salary |
+-------------------+------------+--------+
| William Patterson | Accounting |   8870 |
| Steve Patterson   | Sales      |   9441 |
| Pamela Castillo   | SCM        |  11303 |
| Mary Patterson    | Accounting |   9998 |
| Loui Bondur       | SCM        |  10449 |
+-------------------+------------+--------+
5 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql> ## ASSINMENT 2
mysql>
mysql>
mysql> ##. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
mysql>
mysql>
mysql> select left(first_name, 3) from basic_pays;
ERROR 1054 (42S22): Unknown column 'first_name' in 'field list'
mysql>
mysql> select left(employee_name, 3) from basic_pays;
+------------------------+
| left(employee_name, 3) |
+------------------------+
| Ant                    |
| Bar                    |
| Dia                    |
| Foo                    |
| Geo                    |
| Ger                    |
| Ger                    |
| Jef                    |
| Jul                    |
| Lar                    |
| Les                    |
| Les                    |
| Lou                    |
| Mar                    |
| Pam                    |
| Ste                    |
| Wil                    |
+------------------------+
17 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql> ##. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Anthony Bow’ from basic_pays table.
mysql>
mysql> SELECT LOCATE('a', employee_name) AS position
    -> FROM basic_pays
    -> ^C
mysql> SELECT LOCATE('a', employee_name) AS position
    -> FROM basic_pays
    -> WHERE employee_name = 'Anthony Bow'
    -> ;
+----------+
| position |
+----------+
|        1 |
+----------+
1 row in set (0.01 sec)

mysql>
mysql>
mysql> select locate('a', employee_name) as position from basic_pays where employee_name = 'anthony bow'
    ->
    -> ;
+----------+
| position |
+----------+
|        1 |
+----------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql> ##Write an SQL query to print the name of employees having the highest salary in each department.
mysql>  select department, max(salary) as max_salary from basic_pays group by department
    -> ;
+------------+------------+
| department | max_salary |
+------------+------------+
| Accounting |      11472 |
| SCM        |      11798 |
| Sales      |      10563 |
| IT         |       8113 |
+------------+------------+
4 rows in set (0.01 sec)

mysql>
mysql>
mysql> select e.employee_name,e.department,e.salary  from basic_pays e inner join (^C
mysql>  select e.employee_name,e.department,e.salary  from basic_pays e inner join( select department, max(salary) as max_salary from basic_pays group by department) b ON e.department= b.department and e.salary=b.max_salary;
+-----------------+------------+--------+
| employee_name   | department | salary |
+-----------------+------------+--------+
| George Vanauf   | Sales      |  10563 |
| Gerard Bondur   | Accounting |  11472 |
| Larry Bott      | SCM        |  11798 |
| Leslie Jennings | IT         |   8113 |
+-----------------+------------+--------+
4 rows in set (0.01 sec)

mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> ###Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
mysql>
mysql>
mysql> select rtrim(employee_name) from basic_pays;
+----------------------+
| rtrim(employee_name) |
+----------------------+
| Anthony Bow          |
| Barry Jones          |
| Diane Murphy         |
| Foon Yue Tseng       |
| George Vanauf        |
| Gerard Bondur        |
| Gerard Hernandez     |
| Jeff Firrelli        |
| Julie Firrelli       |
| Larry Bott           |
| Leslie Jennings      |
| Leslie Thompson      |
| Loui Bondur          |
| Mary Patterson       |
| Pamela Castillo      |
| Steve Patterson      |
| William Patterson    |
+----------------------+
17 rows in set (0.01 sec)

mysql>
mysql>
mysql>
mysql>
mysql>
mysql> ##Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length
mysql>
mysql> select distinct department, length(department) as dept_length from basic_pays;
+------------+-------------+
| department | dept_length |
+------------+-------------+
| Accounting |          10 |
| SCM        |           3 |
| Sales      |           5 |
| IT         |           2 |
+------------+-------------+
4 rows in set (0.01 sec)

mysql>
mysql>
mysql> ##Write an SQL query to fetch nth max salaries from a table.
mysql>
mysql> SELECT employee_name, salary ,DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk FROM basic_pays;
+-------------------+--------+-----+
| employee_name     | salary | rnk |
+-------------------+--------+-----+
| Larry Bott        |  11798 |   1 |
| Gerard Bondur     |  11472 |   2 |
| Pamela Castillo   |  11303 |   3 |
| Barry Jones       |  10586 |   4 |
| George Vanauf     |  10563 |   5 |
| Loui Bondur       |  10449 |   6 |
| Mary Patterson    |   9998 |   7 |
| Steve Patterson   |   9441 |   8 |
| Julie Firrelli    |   9181 |   9 |
| Jeff Firrelli     |   8992 |  10 |
| William Patterson |   8870 |  11 |
| Diane Murphy      |   8435 |  12 |
| Leslie Jennings   |   8113 |  13 |
| Gerard Hernandez  |   6949 |  14 |
| Foon Yue Tseng    |   6660 |  15 |
| Anthony Bow       |   6627 |  16 |
| Leslie Thompson   |   5186 |  17 |
+-------------------+--------+-----+
17 rows in set (0.01 sec)

mysql>
mysql>
mysql>
mysql>
mysql> . Write an SQL query to print the FIRST_NAME from basic pays table after replacing ‘a’ with ‘A’
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '. Write an SQL query to print the FIRST_NAME from basic pays table after replaci' at line 1
mysql>
mysql>
mysql> select replace(employee_name ,'a','A') from basic_pays;
+---------------------------------+
| replace(employee_name ,'a','A') |
+---------------------------------+
| Anthony Bow                     |
| BArry Jones                     |
| DiAne Murphy                    |
| Foon Yue Tseng                  |
| George VAnAuf                   |
| GerArd Bondur                   |
| GerArd HernAndez                |
| Jeff Firrelli                   |
| Julie Firrelli                  |
| LArry Bott                      |
| Leslie Jennings                 |
| Leslie Thompson                 |
| Loui Bondur                     |
| MAry PAtterson                  |
| PAmelA CAstillo                 |
| Steve PAtterson                 |
| WilliAm PAtterson               |
+---------------------------------+
17 rows in set (0.01 sec)

mysql>
mysql>
mysql>
mysql>
mysql> #. Write an SQL query to print all employee  details from the basic pays  table order by FIRST_NAME Ascending and DEPARTMENT Descending.
mysql>
mysql>
mysql>
mysql> select * form basic_pays order by employee_name asc,department desc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'form basic_pays order by employee_name asc,department desc' at line 1
mysql> select * from basic_pays order by employee_name asc, department desc;
+-------------------+------------+--------+
| employee_name     | department | salary |
+-------------------+------------+--------+
| Anthony Bow       | Accounting |   6627 |
| Barry Jones       | SCM        |  10586 |
| Diane Murphy      | Accounting |   8435 |
| Foon Yue Tseng    | Sales      |   6660 |
| George Vanauf     | Sales      |  10563 |
| Gerard Bondur     | Accounting |  11472 |
| Gerard Hernandez  | SCM        |   6949 |
| Jeff Firrelli     | Accounting |   8992 |
| Julie Firrelli    | Sales      |   9181 |
| Larry Bott        | SCM        |  11798 |
| Leslie Jennings   | IT         |   8113 |
| Leslie Thompson   | IT         |   5186 |
| Loui Bondur       | SCM        |  10449 |
| Mary Patterson    | Accounting |   9998 |
| Pamela Castillo   | SCM        |  11303 |
| Steve Patterson   | Sales      |   9441 |
| William Patterson | Accounting |   8870 |
+-------------------+------------+--------+
17 rows in set (0.00 sec)

mysql> select * from basic_pays ;
+-------------------+------------+--------+
| employee_name     | department | salary |
+-------------------+------------+--------+
| Anthony Bow       | Accounting |   6627 |
| Barry Jones       | SCM        |  10586 |
| Diane Murphy      | Accounting |   8435 |
| Foon Yue Tseng    | Sales      |   6660 |
| George Vanauf     | Sales      |  10563 |
| Gerard Bondur     | Accounting |  11472 |
| Gerard Hernandez  | SCM        |   6949 |
| Jeff Firrelli     | Accounting |   8992 |
| Julie Firrelli    | Sales      |   9181 |
| Larry Bott        | SCM        |  11798 |
| Leslie Jennings   | IT         |   8113 |
| Leslie Thompson   | IT         |   5186 |
| Loui Bondur       | SCM        |  10449 |
| Mary Patterson    | Accounting |   9998 |
| Pamela Castillo   | SCM        |  11303 |
| Steve Patterson   | Sales      |   9441 |
| William Patterson | Accounting |   8870 |
+-------------------+------------+--------+
17 rows in set (0.00 sec)

mysql> select * from basic_pays order by employee_name dasc, department esc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'dasc, department esc' at line 1
mysql> select * from basic_pays order by employee_name desc, department asc;
+-------------------+------------+--------+
| employee_name     | department | salary |
+-------------------+------------+--------+
| William Patterson | Accounting |   8870 |
| Steve Patterson   | Sales      |   9441 |
| Pamela Castillo   | SCM        |  11303 |
| Mary Patterson    | Accounting |   9998 |
| Loui Bondur       | SCM        |  10449 |
| Leslie Thompson   | IT         |   5186 |
| Leslie Jennings   | IT         |   8113 |
| Larry Bott        | SCM        |  11798 |
| Julie Firrelli    | Sales      |   9181 |
| Jeff Firrelli     | Accounting |   8992 |
| Gerard Hernandez  | SCM        |   6949 |
| Gerard Bondur     | Accounting |  11472 |
| George Vanauf     | Sales      |  10563 |
| Foon Yue Tseng    | Sales      |   6660 |
| Diane Murphy      | Accounting |   8435 |
| Barry Jones       | SCM        |  10586 |
| Anthony Bow       | Accounting |   6627 |
+-------------------+------------+--------+
17 rows in set (0.00 sec)

mysql>
mysql>
mysql> #Write an SQL query to fetch the names of employee_name who earn the highest salary
mysql>
mysql> select max(salary) from basic_pays
    -> ;
+-------------+
| max(salary) |
+-------------+
|       11798 |
+-------------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql> select employee_name from basic_pays where salary=(select max(salary) from basic_pays);
+---------------+
| employee_name |
+---------------+
| Larry Bott    |
+---------------+
1 row in set (0.01 sec)

mysql>
mysql> select employee_name,sal from basic_pays where salary=(select max(salary) from basic_pays);
ERROR 1054 (42S22): Unknown column 'sal' in 'field list'
mysql> select employee_name,salary from basic_pays where salary=(select max(salary) from basic_pays);
+---------------+--------+
| employee_name | salary |
+---------------+--------+
| Larry Bott    |  11798 |
+---------------+--------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> select * from basic_pays;
+-------------------+------------+--------+
| employee_name     | department | salary |
+-------------------+------------+--------+
| Anthony Bow       | Accounting |   6627 |
| Barry Jones       | SCM        |  10586 |
| Diane Murphy      | Accounting |   8435 |
| Foon Yue Tseng    | Sales      |   6660 |
| George Vanauf     | Sales      |  10563 |
| Gerard Bondur     | Accounting |  11472 |
| Gerard Hernandez  | SCM        |   6949 |
| Jeff Firrelli     | Accounting |   8992 |
| Julie Firrelli    | Sales      |   9181 |
| Larry Bott        | SCM        |  11798 |
| Leslie Jennings   | IT         |   8113 |
| Leslie Thompson   | IT         |   5186 |
| Loui Bondur       | SCM        |  10449 |
| Mary Patterson    | Accounting |   9998 |
| Pamela Castillo   | SCM        |  11303 |
| Steve Patterson   | Sales      |   9441 |
| William Patterson | Accounting |   8870 |
+-------------------+------------+--------+
17 rows in set (0.00 sec)

mysql> ##Write an SQL query to print details of workers excluding first names, “Loui Bondur” and “ Barry Jones” from Worker table
mysql>
mysql>
mysql> select * from basic_pays where employee_name  not in ('Loui Bondur','Barry Jones' );
+-------------------+------------+--------+
| employee_name     | department | salary |
+-------------------+------------+--------+
| Anthony Bow       | Accounting |   6627 |
| Diane Murphy      | Accounting |   8435 |
| Foon Yue Tseng    | Sales      |   6660 |
| George Vanauf     | Sales      |  10563 |
| Gerard Bondur     | Accounting |  11472 |
| Gerard Hernandez  | SCM        |   6949 |
| Jeff Firrelli     | Accounting |   8992 |
| Julie Firrelli    | Sales      |   9181 |
| Larry Bott        | SCM        |  11798 |
| Leslie Jennings   | IT         |   8113 |
| Leslie Thompson   | IT         |   5186 |
| Mary Patterson    | Accounting |   9998 |
| Pamela Castillo   | SCM        |  11303 |
| Steve Patterson   | Sales      |   9441 |
| William Patterson | Accounting |   8870 |
+-------------------+------------+--------+
15 rows in set (0.01 sec)

mysql>
mysql>
mysql> ## if i  want  only thos record
mysql>
mysql>  select * from basic_pays where employee_name in ('Loui Bondur','Barry Jones' );
+---------------+------------+--------+
| employee_name | department | salary |
+---------------+------------+--------+
| Barry Jones   | SCM        |  10586 |
| Loui Bondur   | SCM        |  10449 |
+---------------+------------+--------+
2 rows in set (0.00 sec)

mysql>
mysql>
mysql> select * from basic_pays where substring_index (emplayee_name,' ',1) like_____h;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like_____h' at line 1
mysql> select * from basic_pays where substring_index (emplayee_name,' ',1) like'_____h';
ERROR 1054 (42S22): Unknown column 'emplayee_name' in 'where clause'
mysql> select * from basic_pays where substring_index (employee_name,' ',1) like'_____h';
Empty set (0.00 sec)

mysql> SELECT 'Joseph' LIKE '_____h' AS test_result;
+-------------+
| test_result |
+-------------+
|           1 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT SUBSTRING_INDEX(employee_name, ' ', 1) AS first_name,
    ->        LENGTH(SUBSTRING_INDEX(employee_name, ' ', 1)) AS name_length
    -> FROM basic_pays;
+------------+-------------+
| first_name | name_length |
+------------+-------------+
| Anthony    |           7 |
| Barry      |           5 |
| Diane      |           5 |
| Foon       |           4 |
| George     |           6 |
| Gerard     |           6 |
| Gerard     |           6 |
| Jeff       |           4 |
| Julie      |           5 |
| Larry      |           5 |
| Leslie     |           6 |
| Leslie     |           6 |
| Loui       |           4 |
| Mary       |           4 |
| Pamela     |           6 |
| Steve      |           5 |
| William    |           7 |
+------------+-------------+
17 rows in set (0.00 sec)

mysql>
mysql>
mysql> ###Write a query to validate Email of Employee
mysql>
mysql>
mysql> CREATE TABLE test_emails (
    ->     id INT,
    ->     email VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql>
mysql> INSERT INTO test_emails (id, email) VALUES
    -> (1, 'john.doe@example.com'),
    -> (2, 'invalid-email'),
    -> (3, 'jane@test.co'),
    -> (4, 'missing@domain'),
    -> (5, 'good.email123@company.in');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql>
mysql>
mysql> select * from test_email;
ERROR 1146 (42S02): Table 'b119.test_email' doesn't exist
mysql>
mysql>
mysql>
mysql> select * from test_eails;
ERROR 1146 (42S02): Table 'b119.test_eails' doesn't exist
mysql>
mysql> select * from test_emails;
+------+--------------------------+
| id   | email                    |
+------+--------------------------+
|    1 | john.doe@example.com     |
|    2 | invalid-email            |
|    3 | jane@test.co             |
|    4 | missing@domain           |
|    5 | good.email123@company.in |
+------+--------------------------+
5 rows in set (0.00 sec)

mysql>
mysql>
mysql> select * from test_emails where email regexp '^[a-za-z0-9._%+-]+@[a-za-z0-9.-]+\\.[a-za-z]{2,}$';
+------+--------------------------+
| id   | email                    |
+------+--------------------------+
|    1 | john.doe@example.com     |
|    3 | jane@test.co             |
|    5 | good.email123@company.in |
+------+--------------------------+
3 rows in set (0.02 sec)

mysql>
mysql>
mysql>
mysql>
mysql> select * from emp;
+-------+--------+-----------+------+------------+------+------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal  | comm | deptno |
+-------+--------+-----------+------+------------+------+------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-22 | 1250 | 1400 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1987-09-23 | 3000 | NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-19 | 5000 | NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500 |    0 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1987-08-24 | 1100 | NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
+-------+--------+-----------+------+------------+------+------+--------+
14 rows in set (0.01 sec)





Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
mysql>
mysql>
mysql>
mysql> ###Q-15. Write an SQL query to fetch intersecting records of two tables.
mysql>
mysql>
mysql>
mysql> select * from worker w inner join worker_clone wc on worker_id.w=worker_id.wc
    -> ;
ERROR 1046 (3D000): No database selected
mysql>
mysql>
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| b119               |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| school             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.02 sec)

mysql> use b119;
Database changed
mysql> select * from worker w inner join worker_clone wc on worker_id.w=worker_id.wc;
ERROR 1054 (42S22): Unknown column 'worker_id.w' in 'on clause'
mysql> select * from worker w inner join worker_clone wc on w.worker_id=wc.worker_id;
+-----------+------------+-----------+--------+---------------------+------------+--------------------+-----------+------------+-----------+--------+---------------------+------------+--------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL              | WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL              |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+-----------+------------+-----------+--------+---------------------+------------+--------------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com   |         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com   |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      | niharika@gmail.com |         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      | niharika@gmail.com |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com   |         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com   |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com  |         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com  |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com    |         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com    |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com    |         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com    |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com   |         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com   |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com  |         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com  |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+-----------+------------+-----------+--------+---------------------+------------+--------------------+
8 rows in set (0.00 sec)

mysql>
mysql>
mysql> ##Q-16. Write an SQL query to show records from one table that another table does not have.
mysql>
mysql>
mysql> select * from worker w left join worker_clone wc on w.worker_id=wc.worker_id where wc.worker_id is null;
Empty set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql> ###Q-17.  Write an SQL query to show the top n (say 10) records of a table.
mysql>
mysql>
mysql>
mysql> select * form worker limit 10;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'form worker limit 10' at line 1
mysql> select * from worker limit 10;
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL              |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com   |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      | niharika@gmail.com |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com   |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com  |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com    |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com    |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com   |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com  |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
8 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> ##Q-18. Write an SQL query to determine the nth (say n=5) highest salary from a table.
mysql>
mysql>
mysql> select *, dence_rank() OVER (order by salary) AS rank
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'OVER (order by salary) AS rank' at line 1
mysql> select *, dence_rank() OVER (order by salary) AS ranked;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'OVER (order by salary) AS ranked' at line 1
mysql>
mysql>
mysql>
mysql> select *, dense_rank() OVER (order by salary) AS ranked;
ERROR 1096 (HY000): No tables used
mysql> select *, dense_rank() OVER (order by salary) AS ranked from worker;
+-----------+------------+-----------+--------+---------------------+------------+--------------------+--------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL              | ranked |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+--------+
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com   |      1 |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      | niharika@gmail.com |      2 |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com  |      3 |
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com   |      4 |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com    |      5 |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com   |      6 |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com  |      7 |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com    |      7 |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+--------+
8 rows in set (0.00 sec)

mysql> ^C
mysql> select * from ( select *, dense_rank() OVER (order by salary) AS ranked from worker) where ranked=5;
ERROR 1248 (42000): Every derived table must have its own alias
mysql> select * from ( select *, dense_rank() OVER (order by salary) AS ranked from worker)t where ranked=5;
+-----------+------------+-----------+--------+---------------------+------------+-----------------+--------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL           | ranked |
+-----------+------------+-----------+--------+---------------------+------------+-----------------+--------+
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com |      5 |
+-----------+------------+-----------+--------+---------------------+------------+-----------------+--------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql> select * from ( select *, dense_rank() OVER (order by salary desc) AS ranked from worker)t where ranked=5;
+-----------+------------+-----------+--------+---------------------+------------+-------------------+--------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL             | ranked |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+--------+
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com |      5 |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+--------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> ###Q-19. Write an SQL query to determine the 5th highest salary without using TOP or limit method.
mysql>
mysql> select * from ( select *, dense_rank() OVER (order by salary desc) AS ranked from worker)t where ranked=5;
+-----------+------------+-----------+--------+---------------------+------------+-------------------+--------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL             | ranked |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+--------+
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com |      5 |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+--------+
1 row in set (0.01 sec)

mysql>
mysql>
mysql>
mysql> #Q-20. Write an SQL query to fetch the list of employees with the same salary.
mysql>
mysql>
mysql>
mysql> select salary from worker group by salary having count(*)>1;
+--------+
| salary |
+--------+
| 500000 |
+--------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql> select * from worker where salary in ( select salary from worker group by salary having count(*)>1);
+-----------+------------+-----------+--------+---------------------+------------+-------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL             |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com   |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+
2 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql>
mysql> ##Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
mysql>
mysql>
mysql> select FIRST_NAME as WORKER_NAME  from worker;
+-------------+
| WORKER_NAME |
+-------------+
| Monika      |
| Niharika    |
| Vishal      |
| Amitabh     |
| Vivek       |
| Vipul       |
| Satish      |
| Geetika     |
+-------------+
8 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> #Q-2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
mysql>
mysql>
mysql> select distinct department from worker;
+------------+
| department |
+------------+
| HR         |
| Admin      |
| Account    |
+------------+
3 rows in set (0.00 sec)

mysql>
mysql>
mysql> #Q-3. Write an SQL query to show the last 5 record from a table.
mysql>
mysql>
mysql> select * from worker order by desc limit 5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'desc limit 5' at line 1
mysql> select * from worker order by worker_id desc limit 5;
+-----------+------------+-----------+--------+---------------------+------------+-------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL             |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com  |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com   |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com   |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+
5 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> #Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
mysql>
mysql> select left(FIRST_NAME,3) as first_3_char from worker;
+--------------+
| first_3_char |
+--------------+
| Mon          |
| Nih          |
| Vis          |
| Ami          |
| Viv          |
| Vip          |
| Sat          |
| Gee          |
+--------------+
8 rows in set (0.00 sec)

mysql>
mysql>
mysql> # Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
mysql>
mysql>
mysql>
mysql> select locate('a',FIRST_NAME) as position from worker where FIRST_NAME='Amitabh';
+----------+
| position |
+----------+
|        1 |
+----------+
1 row in set (0.01 sec)

mysql>
mysql>
mysql>
mysql>
mysql> #Q-3. Write an SQL query to print the name of employees having the highest salary in each department.
mysql>
mysql>
mysql>
mysql> select max(salary) from worker ;
+-------------+
| max(salary) |
+-------------+
|      500000 |
+-------------+
1 row in set (0.00 sec)

mysql> select * from worker w where salary=(select max(salary) from worker where department =w.department);
+-----------+------------+-----------+--------+---------------------+------------+-------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL             |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com  |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com   |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com   |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+
4 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> #Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
mysql>
mysql>
mysql> select rtrim(FIRST_NAME) form worker;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'worker' at line 1
mysql> select rtrim(FIRST_NAME) as FIRST_NAME form worker;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'form worker' at line 1
mysql> select RTRIM(FIRST_NAME) as FIRST_NAME form worker;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'form worker' at line 1
mysql> select RTRIM(FIRST_NAME) as FIRST_NAME from worker;
+------------+
| FIRST_NAME |
+------------+
| Monika     |
| Niharika   |
| Vishal     |
| Amitabh    |
| Vivek      |
| Vipul      |
| Satish     |
| Geetika    |
+------------+
8 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql>
mysql> #Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
mysql>
mysql>
mysql> select distinct department , lenght(department) as lenght_department from worker;
ERROR 1305 (42000): FUNCTION b119.lenght does not exist
mysql> select distinct department , lenght(department) as length_department from worker;
ERROR 1305 (42000): FUNCTION b119.lenght does not exist
mysql> select distinct department , length(department) as length_department from worker;
+------------+-------------------+
| department | length_department |
+------------+-------------------+
| HR         |                 2 |
| Admin      |                 5 |
| Account    |                 7 |
+------------+-------------------+
3 rows in set (0.00 sec)

mysql>
mysql>
mysql> #Q-3. Write an SQL query to fetch nth max salaries from a table.
mysql>
mysql>
mysql> select max(salary) from worker;
+-------------+
| max(salary) |
+-------------+
|      500000 |
+-------------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql> select salary from (select salary , dense rank() over(order by salary desc) as ranked from worker ) where ranked=9;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rank() over(order by salary desc) as ranked from worker ) where ranked=9' at line 1
mysql>
mysql> select salary from (select salary , dense rank() over(order by salary desc) as ranked from worker )t where ranked=9;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rank() over(order by salary desc) as ranked from worker )t where ranked=9' at line 1
mysql>
mysql>
mysql> select salary from (select salary , DENSE_rank() over(order by salary desc) as ranked from worker )t where ranked=9;
Empty set (0.00 sec)

mysql>
mysql>
mysql>
mysql> #Q-1. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’
mysql>
mysql> select replace(FIRST_NAME,'a','A') as replace from worker;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'replace from worker' at line 1
mysql> select replace(FIRST_NAME,'a','A') as replaces from worker;
+----------+
| replaces |
+----------+
| MonikA   |
| NihArikA |
| VishAl   |
| AmitAbh  |
| Vivek    |
| Vipul    |
| SAtish   |
| GeetikA  |
+----------+
8 rows in set (0.00 sec)

mysql>
mysql>
mysql> #Q-2. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
mysql>
mysql> select * from worker order by FIRST_NAME asc , DEPARTMENT desc;
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL              |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com  |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com  |
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com   |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      | niharika@gmail.com |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com   |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com    |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com   |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com    |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
8 rows in set (0.00 sec)

mysql>
mysql>
mysql> #Q-3. Write an SQL query to fetch the names of workers who earn the highest salary.
mysql>
mysql>
mysql> select FIRST_
    -> NAME ,LAST_NAME ,SALARY where salary = (select max(salary) from worker);
ERROR 1054 (42S22): Unknown column 'FIRST_' in 'field list'
mysql> SELECT FIRST_NAME ,LAST_NAME ,SALARY where salary = (select max(salary) from worker);
ERROR 1054 (42S22): Unknown column 'FIRST_NAME' in 'field list'
mysql> ^C
mysql>
mysql>
mysql> SELECT FIRST_NAME ,LAST_NAME ,SALARY from worker where salary = (select max(salary) from worker);
+------------+-----------+--------+
| FIRST_NAME | LAST_NAME | SALARY |
+------------+-----------+--------+
| Amitabh    | Singh     | 500000 |
| Vivek      | Bhati     | 500000 |
+------------+-----------+--------+
2 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql> #Q-1. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
mysql>
mysql> select * from worker FIRST_TIME not in (“Vipul” , “Satish”)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'not in (“Vipul” , “Satish”)' at line 1
mysql> ^C
mysql> select * from worker FIRST_NAME not in (“Vipul” , “Satish”)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'not in (“Vipul” , “Satish”)' at line 1
mysql>
mysql>
mysql> select * from worker where FIRST_NAME not in (“Vipul” , “Satish”);
ERROR 1054 (42S22): Unknown column '“Vipul”' in 'where clause'
mysql>
mysql>
mysql> select * from worker where FIRST_NAME not in ('Vipul' , 'Satish');
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL              |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com   |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      | niharika@gmail.com |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com   |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com  |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com    |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com  |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
6 rows in set (0.00 sec)

mysql>
mysql>
mysql> #Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
mysql>
mysql>
mysql> select * from worker where FIRST_NAME like '_____h';
+-----------+------------+-----------+--------+---------------------+------------+------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL            |
+-----------+------------+-----------+--------+---------------------+------------+------------------+
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com |
+-----------+------------+-----------+--------+---------------------+------------+------------------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql>  select * from worker where EMAIL REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$';
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL              |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com   |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      | niharika@gmail.com |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com   |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com  |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com    |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com    |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com   |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com  |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
8 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql> #Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2014
mysql>
mysql>
mysql> select * from worker where month(JOINING_DATE)=2 and year(JOINING_DATE)=2014;
+-----------+------------+-----------+--------+---------------------+------------+-------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL             |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com  |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com  |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+
3 rows in set (0.01 sec)

mysql>
mysql>
mysql>
mysql>
mysql> #Q-2. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
mysql>
mysql>
mysql> select  FIRST_NAME, LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT,count(*) as total from worker group by FIRST_NAME, LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT havingcount(*)>1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'havingcount(*)>1' at line 1
mysql> select  FIRST_NAME, LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT,count(*) as total from worker group by FIRST_NAME, LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT having count(*)>1;
Empty set (0.01 sec)

mysql> ^C
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> #Q-3. How to remove duplicate rows from Employees table.
mysql>
mysql>
mysql> select  FIRST_NAME, LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT,count(*) as total from worker group by FIRST_NAME, LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT having count(*)>1;
Empty set (0.00 sec)

mysql>
mysql>
mysql>
mysql> #Q-13. Write an SQL query to show only odd rows from a table.
mysql>
mysql>
mysql> select worker_id from worker where worker_id % 2 = 1;
+-----------+
| worker_id |
+-----------+
|         1 |
|         3 |
|         5 |
|         7 |
+-----------+
4 rows in set (0.00 sec)

mysql> select * from worker where worker_id % 2 = 1;
+-----------+------------+-----------+--------+---------------------+------------+------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL            |
+-----------+------------+-----------+--------+---------------------+------------+------------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com  |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com |
+-----------+------------+-----------+--------+---------------------+------------+------------------+
4 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> #Q-14. Write an SQL query to clone a new table from another table.
mysql>
mysql>
mysql> create table worker_clone_2 from worker;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from worker' at line 1
mysql> ^C
mysql> create table worker_clone_2 as select from worker;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from worker' at line 1
mysql> create table worker_clone_2 as select * from worker;
Query OK, 8 rows affected (0.09 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> \
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> select * from worker_clone;
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL              |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com   |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      | niharika@gmail.com |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com   |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com  |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com    |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com    |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com   |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com  |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
8 rows in set (0.00 sec)

mysql> select * from worker_clone_2;
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL              |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com   |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      | niharika@gmail.com |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com   |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com  |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com    |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com    |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com   |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com  |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
8 rows in set (0.00 sec)

mysql> select * from worker;
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL              |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com   |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      | niharika@gmail.com |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com   |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com  |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com    |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com    |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com   |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com  |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
8 rows in set (0.00 sec)



ysql> ###Q-15. Write an SQL query to fetch intersecting records of two tables.
mysql>
mysql>
mysql>
mysql> select * from worker w inner join worker_clone wc on worker_id.w=worker_id.wc
    -> ;
ERROR 1046 (3D000): No database selected
mysql>
mysql>
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| b119               |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| school             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.02 sec)

mysql> use b119;
Database changed
mysql> select * from worker w inner join worker_clone wc on worker_id.w=worker_id.wc;
ERROR 1054 (42S22): Unknown column 'worker_id.w' in 'on clause'
mysql> select * from worker w inner join worker_clone wc on w.worker_id=wc.worker_id;
+-----------+------------+-----------+--------+---------------------+------------+--------------------+-----------+------------+-----------+--------+---------------------+------------+--------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL              | WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL              |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+-----------+------------+-----------+--------+---------------------+------------+--------------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com   |         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com   |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      | niharika@gmail.com |         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      | niharika@gmail.com |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com   |         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com   |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com  |         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com  |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com    |         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com    |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com    |         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com    |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com   |         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com   |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com  |         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com  |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+-----------+------------+-----------+--------+---------------------+------------+--------------------+
8 rows in set (0.00 sec)

mysql>
mysql>
mysql> ##Q-16. Write an SQL query to show records from one table that another table does not have.
mysql>
mysql>
mysql> select * from worker w left join worker_clone wc on w.worker_id=wc.worker_id where wc.worker_id is null;
Empty set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql> ###Q-17.  Write an SQL query to show the top n (say 10) records of a table.
mysql>
mysql>
mysql>
mysql> select * form worker limit 10;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'form worker limit 10' at line 1
mysql> select * from worker limit 10;
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL              |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com   |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      | niharika@gmail.com |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com   |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com  |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com    |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com    |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com   |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com  |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+
8 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> ##Q-18. Write an SQL query to determine the nth (say n=5) highest salary from a table.
mysql>
mysql>
mysql> select *, dence_rank() OVER (order by salary) AS rank
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'OVER (order by salary) AS rank' at line 1
mysql> select *, dence_rank() OVER (order by salary) AS ranked;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'OVER (order by salary) AS ranked' at line 1
mysql>
mysql>
mysql>
mysql> select *, dense_rank() OVER (order by salary) AS ranked;
ERROR 1096 (HY000): No tables used
mysql> select *, dense_rank() OVER (order by salary) AS ranked from worker;
+-----------+------------+-----------+--------+---------------------+------------+--------------------+--------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL              | ranked |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+--------+
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    | satish@gmail.com   |      1 |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      | niharika@gmail.com |      2 |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com  |      3 |
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         | monika@gmail.com   |      4 |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com    |      5 |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | vishal@gmail.com   |      6 |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com  |      7 |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com    |      7 |
+-----------+------------+-----------+--------+---------------------+------------+--------------------+--------+
8 rows in set (0.00 sec)

mysql> ^C
mysql> select * from ( select *, dense_rank() OVER (order by salary) AS ranked from worker) where ranked=5;
ERROR 1248 (42000): Every derived table must have its own alias
mysql> select * from ( select *, dense_rank() OVER (order by salary) AS ranked from worker)t where ranked=5;
+-----------+------------+-----------+--------+---------------------+------------+-----------------+--------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL           | ranked |
+-----------+------------+-----------+--------+---------------------+------------+-----------------+--------+
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | vipul@gmail.com |      5 |
+-----------+------------+-----------+--------+---------------------+------------+-----------------+--------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql> select * from ( select *, dense_rank() OVER (order by salary desc) AS ranked from worker)t where ranked=5;
+-----------+------------+-----------+--------+---------------------+------------+-------------------+--------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL             | ranked |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+--------+
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com |      5 |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+--------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> ###Q-19. Write an SQL query to determine the 5th highest salary without using TOP or limit method.
mysql>
mysql> select * from ( select *, dense_rank() OVER (order by salary desc) AS ranked from worker)t where ranked=5;
+-----------+------------+-----------+--------+---------------------+------------+-------------------+--------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL             | ranked |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+--------+
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      | geetika@gmail.com |      5 |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+--------+
1 row in set (0.01 sec)

mysql>
mysql>
mysql>
mysql> #Q-20. Write an SQL query to fetch the list of employees with the same salary.
mysql>
mysql>
mysql>
mysql> select salary from worker group by salary having count(*)>1;
+--------+
| salary |
+--------+
| 500000 |
+--------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql> select * from worker where salary in ( select salary from worker group by salary having count(*)>1);
+-----------+------------+-----------+--------+---------------------+------------+-------------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | EMAIL             |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | amitabh@gmail.com |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | vivek@gmail.com   |
+-----------+------------+-----------+--------+---------------------+------------+-------------------+
2 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>