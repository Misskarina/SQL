Enter password: ******
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 437
Server version: 10.9.2-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| a                  |
| allmapping         |
| api                |
| b                  |
| banking_app        |
| bc                 |
| bookstore          |
| btech              |
| chatdb             |
| collegework        |
| crud               |
| database_name      |
| dto                |
| emp                |
| exception          |
| expense_tracker    |
| fraudshield        |
| hibernate          |
| idcts              |
| information_schema |
| infosys            |
| inheritance        |
| mapping            |
| mappingprac        |
| multitable         |
| mysql              |
| onetomany          |
| performance_schema |
| placement          |
| practice           |
| project            |
| restapi            |
| revision           |
| sequence           |
| spring             |
| student            |
| sys                |
| testing            |
| thymeleaf          |
| todolist           |
| transaction        |
| url_shortener_db   |
| valid              |
| validation         |
| webflux            |
+--------------------+
45 rows in set (0.026 sec)

MariaDB [(none)]> use placement;
Database changed
MariaDB [placement]> show tables;
+---------------------+
| Tables_in_placement |
+---------------------+
| branches            |
| customer            |
| employee            |
| student             |
+---------------------+
4 rows in set (0.018 sec)

MariaDB [placement]> desc branches;
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| id            | int(11)     | NO   | PRI | NULL    | auto_increment |
| bname         | varchar(70) | YES  |     | NULL    |                |
| total_student | int(11)     | NO   |     | NULL    |                |
| got_placed    | int(11)     | YES  |     | NULL    |                |
| not_placed    | int(11)     | YES  |     | NULL    |                |
| avgcgpa       | double      | NO   |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
6 rows in set (0.047 sec)

MariaDB [placement]> desc customer
    -> ;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| id      | int(11)     | NO   | PRI | NULL    | auto_increment |
| name    | varchar(90) | YES  |     | NULL    |                |
| account | varchar(50) | NO   |     | saving  |                |
+---------+-------------+------+-----+---------+----------------+
3 rows in set (0.036 sec)

MariaDB [placement]> desc employee;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int(11)     | NO   | PRI | NULL    |       |
| name    | varchar(90) | NO   |     | NULL    |       |
| salary  | float       | YES  |     | NULL    |       |
| state   | varchar(80) | NO   |     | NULL    |       |
| country | varchar(90) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (0.050 sec)

MariaDB [placement]> desc student;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(11)     | NO   | PRI | NULL    |       |
| name  | varchar(40) | YES  |     | NULL    |       |
| marks | int(11)     | NO   |     | NULL    |       |
| city  | varchar(70) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
4 rows in set (0.037 sec)

MariaDB [placement]> select * from student;
+----+--------+-------+-----------+
| id | name   | marks | city      |
+----+--------+-------+-----------+
|  1 | Karina |    99 | Ranchi    |
|  2 | Kriti  |    70 | Jodhpur   |
|  3 | Kajal  |    89 | Ranchi    |
|  4 | Priti  |    80 | Dholakpur |
|  5 | Srijna |    67 | Durgapur  |
+----+--------+-------+-----------+
5 rows in set (0.000 sec)

MariaDB [placement]> select * from branches;
+----+----------------------+---------------+------------+------------+---------+
| id | bname                | total_student | got_placed | not_placed | avgcgpa |
+----+----------------------+---------------+------------+------------+---------+
|  1 | software engineering |            75 |          3 |         72 |     8.2 |
|  2 | IOT                  |            75 |          0 |         75 |       8 |
|  3 | CSBS                 |            85 |          3 |         82 |     8.5 |
|  4 | General              |           500 |         10 |        490 |     7.7 |
+----+----------------------+---------------+------------+------------+---------+
4 rows in set (0.021 sec)

MariaDB [placement]>