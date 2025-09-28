MariaDB [(none)]> create database company;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> use company;
Database changed
MariaDB [company]> CREATE TABLE Customer (
    ->     CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    ->     FirstName VARCHAR(50) NOT NULL,
    ->     LastName VARCHAR(50) NOT NULL,
    ->     Email VARCHAR(100) UNIQUE,
    ->     Phone VARCHAR(15),
    ->     Address VARCHAR(200),
    ->     City VARCHAR(50),
    ->     State VARCHAR(50),
    ->     PostalCode VARCHAR(10),
    ->     Country VARCHAR(50),
    ->     CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
    -> );
Query OK, 0 rows affected (0.038 sec)

MariaDB [company]> -- Create Orders Table
MariaDB [company]> CREATE TABLE Orders (
    ->     OrderID INT AUTO_INCREMENT PRIMARY KEY,
    ->     CustomerID INT,
    ->     OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    ->     TotalAmount DECIMAL(10,2),
    ->     Status VARCHAR(20) DEFAULT 'Pending',
    ->     PaymentMethod VARCHAR(30),
    ->     ShippingAddress VARCHAR(200),
    ->     CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    ->     FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
    -> );
Query OK, 0 rows affected (0.032 sec)

MariaDB [company]>MariaDB [company]> desc customer;
+------------+--------------+------+-----+---------------------+----------------+
| Field      | Type         | Null | Key | Default             | Extra          |
+------------+--------------+------+-----+---------------------+----------------+
| CustomerID | int(11)      | NO   | PRI | NULL                | auto_increment |
| FirstName  | varchar(50)  | NO   |     | NULL                |                |
| LastName   | varchar(50)  | NO   |     | NULL                |                |
| Email      | varchar(100) | YES  | UNI | NULL                |                |
| Phone      | varchar(15)  | YES  |     | NULL                |                |
| Address    | varchar(200) | YES  |     | NULL                |                |
| City       | varchar(50)  | YES  |     | NULL                |                |
| State      | varchar(50)  | YES  |     | NULL                |                |
| PostalCode | varchar(10)  | YES  |     | NULL                |                |
| Country    | varchar(50)  | YES  |     | NULL                |                |
| CreatedAt  | datetime     | YES  |     | current_timestamp() |                |
+------------+--------------+------+-----+---------------------+----------------+
11 rows in set (0.055 sec)

MariaDB [company]> desc orders;
+-----------------+---------------+------+-----+---------------------+----------------+
| Field           | Type          | Null | Key | Default             | Extra          |
+-----------------+---------------+------+-----+---------------------+----------------+
| OrderID         | int(11)       | NO   | PRI | NULL                | auto_increment |
| CustomerID      | int(11)       | YES  | MUL | NULL                |                |
| OrderDate       | datetime      | YES  |     | current_timestamp() |                |
| TotalAmount     | decimal(10,2) | YES  |     | NULL                |                |
| Status          | varchar(20)   | YES  |     | Pending             |                |
| PaymentMethod   | varchar(30)   | YES  |     | NULL                |                |
| ShippingAddress | varchar(200)  | YES  |     | NULL                |                |
| CreatedAt       | datetime      | YES  |     | current_timestamp() |                |
+-----------------+---------------+------+-----+---------------------+----------------+
8 rows in set (0.039 sec)
