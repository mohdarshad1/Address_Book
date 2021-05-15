#UC1

mysql> CREATE DATABASE address_Book_Service;
mysql> USE address_Book_Service;

#UC2

mysql> CREATE TABLE address_book
    -> (
    -> id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    -> first_name VARCHAR(20) NOT NULL,
    -> last_name VARCHAR(20) NOT NULL,
    -> address VARCHAR(100) NOT NULL,
    -> city VARCHAR(30) NOT NULL,
    -> state VARCHAR(20) NOT NULL,
    -> zip VARCHAR(6) NOT NULL,
    -> phone_number VARCHAR(10) NOT NULL,
    -> emailId VARCHAR(100) NOT NULL,
    -> PRIMARY KEY (id)
    -> );

mysql> DESC address_book;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id           | int unsigned | NO   | PRI | NULL    | auto_increment |
| first_name   | varchar(20)  | NO   |     | NULL    |                |
| last_name    | varchar(20)  | NO   |     | NULL    |                |
| address      | varchar(100) | NO   |     | NULL    |                |
| city         | varchar(30)  | NO   |     | NULL    |                |
| state        | varchar(20)  | NO   |     | NULL    |                |
| zip          | varchar(6)   | NO   |     | NULL    |                |
| phone_number | varchar(10)  | NO   |     | NULL    |                |
| emailId      | varchar(100) | NO   |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+

#UC3

mysql> INSERT address_book (first_name, last_name, address, city, state, zip, phone_number, emailId) VALUES
    -> ('Mohd', 'Arshad', 'Karol Bagh', 'New Delhi', 'Delhi', '110005','9494691188', 'klg@klg.com'),
    -> ('Priyansh', 'Kumar', 'Malabar', 'Mumbai', 'Maharashtra', '530066','9882763875', 'pl@pl.com'),
    -> ('Rahul', 'Singh', 'Guargon Sec-1', 'Guargon', 'Haryana', '530044','9494691888', 'mln@mln.com');

mysql> Select * FROM address_book;
+----+------------+-----------+---------------+-----------+-------------+--------+--------------+-------------+
| id | first_name | last_name | address       | city      | state       | zip    | phone_number | emailId     |
+----+------------+-----------+---------------+-----------+-------------+--------+--------------+-------------+
|  1 | Mohd       | Arshad    | Karol Bagh    | New Delhi | Delhi       | 110005 | 9494691188   | klg@klg.com |
|  2 | Priyansh   | Kumar     | Malabar       | Mumbai    | Maharashtra | 530066 | 9882763875   | pl@pl.com   |
|  3 | Rahul      | Singh     | Guargon Sec-1 | Guargon   | Haryana     | 530044 | 9494691888   | mln@mln.com |
+----+------------+-----------+---------------+-----------+-------------+--------+--------------+-------------+

#UC4

mysql> UPDATE address_book
    -> SET phone_number = '9717704916'
    -> WHERE first_name = 'Mohd';

mysql> Select * FROM address_book;
+----+------------+-----------+---------------+-----------+-------------+--------+--------------+-------------+
| id | first_name | last_name | address       | city      | state       | zip    | phone_number | emailId     |
+----+------------+-----------+---------------+-----------+-------------+--------+--------------+-------------+
|  1 | Mohd       | Arshad    | Karol Bagh    | New Delhi | Delhi       | 110005 | 9717704916   | klg@klg.com |
|  2 | Priyansh   | Kumar     | Malabar       | Mumbai    | Maharashtra | 530066 | 9882763875   | pl@pl.com   |
|  3 | Rahul      | Singh     | Guargon Sec-1 | Guargon   | Haryana     | 530044 | 9494691888   | mln@mln.com |
+----+------------+-----------+---------------+-----------+-------------+--------+--------------+-------------+

#UC5

mysql> DELETE FROM address_book
    -> WHERE first_name = 'Rahul';

mysql> Select * FROM address_book;
+----+------------+-----------+------------+-----------+-------------+--------+--------------+-------------+
| id | first_name | last_name | address    | city      | state       | zip    | phone_number | emailId     |
+----+------------+-----------+------------+-----------+-------------+--------+--------------+-------------+
|  1 | Mohd       | Arshad    | Karol Bagh | New Delhi | Delhi       | 110005 | 9717704916   | klg@klg.com |
|  2 | Priyansh   | Kumar     | Malabar    | Mumbai    | Maharashtra | 530066 | 9882763875   | pl@pl.com   |
+----+------------+-----------+------------+-----------+-------------+--------+--------------+-------------+

#UC6

mysql> SELECT * FROM address_book
    -> WHERE city = 'Mumbai';
+----+------------+-----------+---------+--------+-------------+--------+--------------+-----------+
| id | first_name | last_name | address | city   | state       | zip    | phone_number | emailId   |
+----+------------+-----------+---------+--------+-------------+--------+--------------+-----------+
|  2 | Priyansh   | Kumar     | Malabar | Mumbai | Maharashtra | 530066 | 9882763875   | pl@pl.com |
+----+------------+-----------+---------+--------+-------------+--------+--------------+-----------+

mysql> SELECT * FROM address_book
    -> WHERE state = 'Delhi';
+----+------------+-----------+------------+-----------+-------+--------+--------------+-------------+
| id | first_name | last_name | address    | city      | state | zip    | phone_number | emailId     |
+----+------------+-----------+------------+-----------+-------+--------+--------------+-------------+
|  1 | Mohd       | Arshad    | Karol Bagh | New Delhi | Delhi | 110005 | 9717704916   | klg@klg.com |
+----+------------+-----------+------------+-----------+-------+--------+--------------+-------------+

#UC7

mysql> SELECT COUNT(city)
    -> FROM address_book;
+-------------+
| COUNT(city) |
+-------------+
|           2 |
+-------------+

mysql> SELECT COUNT(state)
    -> FROM address_book;
+--------------+
| COUNT(state) |
+--------------+
|            2 |
+--------------+

#UC8

mysql> INSERT address_book (first_name, last_name, address, city, state, zip, phone_number, emailId) VALUES
    -> ('Kalyan', 'Kumar', 'Andheri', 'Mumbai', 'Maharashtra', '530066','9882763845', 'pl@p.com'),
    -> ('Atik', 'Singh', 'Dharavi', 'Mumbai', 'Maharashtra', '530044','9494631888', 'mlk@mln.com');

mysql> SELECT * FROM address_book
    -> WHERE city = 'Mumbai'
    -> ORDER BY first_name ASC;
+----+------------+-----------+---------+--------+-------------+--------+--------------+-------------+
| id | first_name | last_name | address | city   | state       | zip    | phone_number | emailId     |
+----+------------+-----------+---------+--------+-------------+--------+--------------+-------------+
|  5 | Atik       | Singh     | Dharavi | Mumbai | Maharashtra | 530044 | 9494631888   | mlk@mln.com |
|  4 | Kalyan     | Kumar     | Andheri | Mumbai | Maharashtra | 530066 | 9882763845   | pl@p.com    |
|  2 | Priyansh   | Kumar     | Malabar | Mumbai | Maharashtra | 530066 | 9882763875   | pl@pl.com   |
+----+------------+-----------+---------+--------+-------------+--------+--------------+-------------+

#UC9

mysql> select *From address_book;
+----+------------+-----------+------------+-----------+-------------+--------+--------------+-------------+------------+
| id | first_name | last_name | address    | city      | state       | zip    | phone_number | emailId     | profession |
+----+------------+-----------+------------+-----------+-------------+--------+--------------+-------------+------------+
|  1 | Mohd       | Arshad    | Karol Bagh | New Delhi | Delhi       | 110005 | 9717704916   | klg@klg.com | NULL       |
|  2 | Priyansh   | Kumar     | Malabar    | Mumbai    | Maharashtra | 530066 | 9882763875   | pl@pl.com   | NULL       |
|  4 | Kalyan     | Kumar     | Andheri    | Mumbai    | Maharashtra | 530066 | 9882763845   | pl@p.com    | NULL       |
|  5 | Atik       | Singh     | Dharavi    | Mumbai    | Maharashtra | 530044 | 9494631888   | mlk@mln.com | NULL       |
+----+------------+-----------+------------+-----------+-------------+--------+--------------+-------------+------------+

#UC9

mysql> ALTER TABLE Address_Book ADD name VARCHAR(15);

mysql> ALTER TABLE Address_Book ADD type VARCHAR(15) DEFAULT 'Friend';

mysql> select *From address_book;
+----+------------+-----------+------------+-----------+-------------+--------+--------------+-------------+------+--------+
| id | first_name | last_name | address    | city      | state       | zip    | phone_number | emailId     | name | type   |
+----+------------+-----------+------------+-----------+-------------+--------+--------------+-------------+------+--------+
|  1 | Mohd       | Arshad    | Karol Bagh | New Delhi | Delhi       | 110005 | 9717704916   | klg@klg.com | NULL | Friend |
|  2 | Priyansh   | Kumar     | Malabar    | Mumbai    | Maharashtra | 530066 | 9882763875   | pl@pl.com   | NULL | Friend |
|  4 | Kalyan     | Kumar     | Andheri    | Mumbai    | Maharashtra | 530066 | 9882763845   | pl@p.com    | NULL | Friend |
|  5 | Atik       | Singh     | Dharavi    | Mumbai    | Maharashtra | 530044 | 9494631888   | mlk@mln.com | NULL | Friend |
+----+------------+-----------+------------+-----------+-------------+--------+--------------+-------------+------+--------+

#UC10

mysql> SELECT COUNT(type) FROM address_book;
+-------------+
| COUNT(type) |
+-------------+
|           4 |
+-------------+

#UC11

mysql> INSERT address_book (first_name, last_name, address, city, state, zip, phone_number, emailId, name, type) VALUES
    -> ('Atik', 'Singh', 'Dharavi', 'Mumbai', 'Maharashtra', '530044','9494631888', 'mlk@mln.com',NULL, 'Family');

mysql> select *From address_book;
+----+------------+-----------+------------+-----------+-------------+--------+--------------+-------------+------+--------+
| id | first_name | last_name | address    | city      | state       | zip    | phone_number | emailId     | name | type   |
+----+------------+-----------+------------+-----------+-------------+--------+--------------+-------------+------+--------+
|  1 | Mohd       | Arshad    | Karol Bagh | New Delhi | Delhi       | 110005 | 9717704916   | klg@klg.com | NULL | Friend |
|  2 | Priyansh   | Kumar     | Malabar    | Mumbai    | Maharashtra | 530066 | 9882763875   | pl@pl.com   | NULL | Friend |
|  4 | Kalyan     | Kumar     | Andheri    | Mumbai    | Maharashtra | 530066 | 9882763845   | pl@p.com    | NULL | Friend |
|  5 | Atik       | Singh     | Dharavi    | Mumbai    | Maharashtra | 530044 | 9494631888   | mlk@mln.com | NULL | Friend |
|  6 | Atik       | Singh     | Dharavi    | Mumbai    | Maharashtra | 530044 | 9494631888   | mlk@mln.com | NULL | Family |
+----+------------+-----------+------------+-----------+-------------+--------+--------------+-------------+------+--------+


