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





