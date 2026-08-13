


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





