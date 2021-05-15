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



