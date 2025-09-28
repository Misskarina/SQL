

MariaDB [(none)]> use company;
Database changed
MariaDB [company]> show tables;
+-------------------+
| Tables_in_company |
+-------------------+
| customer          |
| orders            |
+-------------------+
2 rows in set (0.019 sec)

MariaDB [company]> desc customer;
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
11 rows in set (0.044 sec)

        // insert single data

MariaDB [company]> insert into customer(CustomerID,FirstName,LastName,Email,Phone,Address,City,State,PostalCode,Country,CreatedAt) values(1,'Karina','Kumari','karina123@gmail.com',
    -> '7894561230','Lokai','Koderma','Jharkhand','825409','India',NOW());
Query OK, 1 row affected (0.019 sec)

//insert multiple data

MariaDB [company]> INSERT INTO customer
    -> (CustomerID, FirstName, LastName, Email, Phone, Address, City, State, PostalCode, Country, CreatedAt)
    -> VALUES
    -> (11, 'Piyush', 'Kumar', 'piyush123@gmail.com', '7894561230', 'Lokai', 'Koderma', 'Jharkhand', '825409', 'India', NOW()),
    -> (2, 'Rahul', 'Verma', 'rahul.verma@gmail.com', '9876543210', 'MG Road', 'Patna', 'Bihar', '800001', 'India', NOW()),
    -> (3, 'Anjali', 'Sharma', 'anjali.sharma@gmail.com', '9123456780', 'Sector 5', 'Noida', 'Uttar Pradesh', '201301', 'India', NOW()),
    -> (4, 'Saurabh', 'Singh', 'saurabh.singh@gmail.com', '9988776655', 'Park Street', 'Kolkata', 'West Bengal', '700016', 'India', NOW()),
    -> (5, 'Priya', 'Mehta', 'priya.mehta@gmail.com', '9012345678', 'Brigade Road', 'Bangalore', 'Karnataka', '560001', 'India', NOW()),
    -> (6, 'Vikram', 'Khatri', 'vikram.khatri@gmail.com', '8877665544', 'Connaught Place', 'Delhi', 'Delhi', '110001', 'India', NOW()),
    -> (7, 'Neha', 'Reddy', 'neha.reddy@gmail.com', '9001122334', 'MG Nagar', 'Hyderabad', 'Telangana', '500001', 'India', NOW()),
    -> (8, 'Aditya', 'Kapoor', 'aditya.kapoor@gmail.com', '9988123456', 'Jayanagar', 'Bangalore', 'Karnataka', '560011', 'India', NOW()),
    -> (9, 'Shivani', 'Gupta', 'shivani.gupta@gmail.com', '9877001122', 'Sector 18', 'Gurgaon', 'Haryana', '122001', 'India', NOW()),
    -> (10, 'Rohan', 'Chopra', 'rohan.chopra@gmail.com', '9122334455', 'Marine Drive', 'Mumbai', 'Maharashtra', '400002', 'India', NOW());
Query OK, 10 rows affected (0.005 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [company]> select * from customer;
+------------+-----------+----------+-------------------------+------------+-----------------+-----------+---------------+------------+---------+---------------------+
| CustomerID | FirstName | LastName | Email                   | Phone      | Address         | City      | State         | PostalCode | Country | CreatedAt           |
+------------+-----------+----------+-------------------------+------------+-----------------+-----------+---------------+------------+---------+---------------------+
|          1 | Karina    | Kumari   | karina123@gmail.com     | 7894561230 | Lokai           | Koderma   | Jharkhand     | 825409     | India   | 2025-09-28 15:44:48 |
|          2 | Rahul     | Verma    | rahul.verma@gmail.com   | 9876543210 | MG Road         | Patna     | Bihar         | 800001     | India   | 2025-09-28 15:50:04 |
|          3 | Anjali    | Sharma   | anjali.sharma@gmail.com | 9123456780 | Sector 5        | Noida     | Uttar Pradesh | 201301     | India   | 2025-09-28 15:50:04 |
|          4 | Saurabh   | Singh    | saurabh.singh@gmail.com | 9988776655 | Park Street     | Kolkata   | West Bengal   | 700016     | India   | 2025-09-28 15:50:04 |
|          5 | Priya     | Mehta    | priya.mehta@gmail.com   | 9012345678 | Brigade Road    | Bangalore | Karnataka     | 560001     | India   | 2025-09-28 15:50:04 |
|          6 | Vikram    | Khatri   | vikram.khatri@gmail.com | 8877665544 | Connaught Place | Delhi     | Delhi         | 110001     | India   | 2025-09-28 15:50:04 |
|          7 | Neha      | Reddy    | neha.reddy@gmail.com    | 9001122334 | MG Nagar        | Hyderabad | Telangana     | 500001     | India   | 2025-09-28 15:50:04 |
|          8 | Aditya    | Kapoor   | aditya.kapoor@gmail.com | 9988123456 | Jayanagar       | Bangalore | Karnataka     | 560011     | India   | 2025-09-28 15:50:04 |
|          9 | Shivani   | Gupta    | shivani.gupta@gmail.com | 9877001122 | Sector 18       | Gurgaon   | Haryana       | 122001     | India   | 2025-09-28 15:50:04 |
|         10 | Rohan     | Chopra   | rohan.chopra@gmail.com  | 9122334455 | Marine Drive    | Mumbai    | Maharashtra   | 400002     | India   | 2025-09-28 15:50:04 |
|         11 | Piyush    | Kumar    | piyush123@gmail.com     | 7894561230 | Lokai           | Koderma   | Jharkhand     | 825409     | India   | 2025-09-28 15:50:04 |
+------------+-----------+----------+-------------------------+------------+-----------------+-----------+---------------+------------+---------+---------------------+
11 rows in set (0.000 sec)

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
8 rows in set (0.037 sec)

MariaDB [company]> INSERT INTO orders
    -> (OrderID, CustomerID, OrderDate, TotalAmount, Status, PaymentMethod, ShippingAddress, CreatedAt)
    -> VALUES
    -> (1, 1, NOW(), 1500.50, 'Pending', 'Credit Card', 'Lokai, Koderma, Jharkhand, 825409', NOW()),
    -> (2, 2, NOW(), 2500.00, 'Completed', 'Debit Card', 'MG Road, Patna, Bihar, 800001', NOW()),
    -> (3, 3, NOW(), 3200.75, 'Shipped', 'UPI', 'Sector 5, Noida, Uttar Pradesh, 201301', NOW()),
    -> (4, 4, NOW(), 1800.20, 'Pending', 'Net Banking', 'Park Street, Kolkata, West Bengal, 700016', NOW()),
    -> (5, 5, NOW(), 4500.00, 'Completed', 'Credit Card', 'Brigade Road, Bangalore, Karnataka, 560001', NOW()),
    -> (6, 6, NOW(), 2100.00, 'Cancelled', 'Debit Card', 'Connaught Place, Delhi, Delhi, 110001', NOW()),
    -> (7, 7, NOW(), 1300.30, 'Pending', 'UPI', 'MG Nagar, Hyderabad, Telangana, 500001', NOW()),
    -> (8, 8, NOW(), 2750.60, 'Shipped', 'Credit Card', 'Jayanagar, Bangalore, Karnataka, 560011', NOW()),
    -> (9, 9, NOW(), 3900.90, 'Completed', 'Net Banking', 'Sector 18, Gurgaon, Haryana, 122001', NOW()),
    -> (10, 10, NOW(), 5000.00, 'Pending', 'UPI', 'Marine Drive, Mumbai, Maharashtra, 400002', NOW());
Query OK, 10 rows affected (0.022 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [company]> select * from orders;
+---------+------------+---------------------+-------------+-----------+---------------+--------------------------------------------+---------------------+
| OrderID | CustomerID | OrderDate           | TotalAmount | Status    | PaymentMethod | ShippingAddress                            | CreatedAt           |
+---------+------------+---------------------+-------------+-----------+---------------+--------------------------------------------+---------------------+
|       1 |          1 | 2025-09-28 15:52:32 |     1500.50 | Pending   | Credit Card   | Lokai, Koderma, Jharkhand, 825409          | 2025-09-28 15:52:32 |
|       2 |          2 | 2025-09-28 15:52:32 |     2500.00 | Completed | Debit Card    | MG Road, Patna, Bihar, 800001              | 2025-09-28 15:52:32 |
|       3 |          3 | 2025-09-28 15:52:32 |     3200.75 | Shipped   | UPI           | Sector 5, Noida, Uttar Pradesh, 201301     | 2025-09-28 15:52:32 |
|       4 |          4 | 2025-09-28 15:52:32 |     1800.20 | Pending   | Net Banking   | Park Street, Kolkata, West Bengal, 700016  | 2025-09-28 15:52:32 |
|       5 |          5 | 2025-09-28 15:52:32 |     4500.00 | Completed | Credit Card   | Brigade Road, Bangalore, Karnataka, 560001 | 2025-09-28 15:52:32 |
|       6 |          6 | 2025-09-28 15:52:32 |     2100.00 | Cancelled | Debit Card    | Connaught Place, Delhi, Delhi, 110001      | 2025-09-28 15:52:32 |
|       7 |          7 | 2025-09-28 15:52:32 |     1300.30 | Pending   | UPI           | MG Nagar, Hyderabad, Telangana, 500001     | 2025-09-28 15:52:32 |
|       8 |          8 | 2025-09-28 15:52:32 |     2750.60 | Shipped   | Credit Card   | Jayanagar, Bangalore, Karnataka, 560011    | 2025-09-28 15:52:32 |
|       9 |          9 | 2025-09-28 15:52:32 |     3900.90 | Completed | Net Banking   | Sector 18, Gurgaon, Haryana, 122001        | 2025-09-28 15:52:32 |
|      10 |         10 | 2025-09-28 15:52:32 |     5000.00 | Pending   | UPI           | Marine Drive, Mumbai, Maharashtra, 400002  | 2025-09-28 15:52:32 |
+---------+------------+---------------------+-------------+-----------+---------------+--------------------------------------------+---------------------+
10 rows in set (0.001 sec)

MariaDB [company]>