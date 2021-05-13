# Welcome to Address Book

#UC1

mysql> CREATE DATABASE AddressBookService;

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| addressbookservice |
| information_schema |
| mysql              |
| payroll_service    |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.00 sec)

mysql> USE AddressBookService;
Database changed

mysql> select database();
+--------------------+
| database()         |
+--------------------+
| addressbookservice |
+--------------------+

#UC2

mysql> CREATE TABLE AddressBook
    -> (
    -> Id INT unsigned NOT NULL AUTO_INCREMENT,
    -> First_Name VARCHAR(15) NOT NULL,
    -> Last_Name VARCHAR(15) NOT NULL,
    -> Address VARCHAR(150) NOT NULL,
    -> City VARCHAR(15) NOT NULL,
    -> State VARCHAR(15) NOT NULL,
    -> Zip BIGINT NOT NULL,
    -> Phone_Number BIGINT NOT NULL,
    -> Email VARCHAR(150) NOT NULL,
    -> PRIMARY KEY(Id)
    -> );

mysql> DESCRIBE AddressBook;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| Id           | int unsigned | NO   | PRI | NULL    | auto_increment |
| First_Name   | varchar(15)  | NO   |     | NULL    |                |
| Last_Name    | varchar(15)  | NO   |     | NULL    |                |
| Address      | varchar(150) | NO   |     | NULL    |                |
| City         | varchar(15)  | NO   |     | NULL    |                |
| State        | varchar(15)  | NO   |     | NULL    |                |
| Zip          | bigint       | NO   |     | NULL    |                |
| Phone_Number | bigint       | NO   |     | NULL    |                |
| Email        | varchar(150) | NO   |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+

#UC3

mysql> INSERT INTO AddressBook(First_Name,Last_Name,Address,City,State,Zip,Phone_Number,Email) VALUES
    -> ('Mohd','Arshad','Karol Bagh','New Delhi','Delhi',110005,9987644333,'abc@gmail.com'),
    -> ('Harsh','Singh','Vaishali Nagar', 'New Delhi','Delhi',222333,7896541230,'xyz@gmail.com'),
    -> ('Shefali','Verma','124/A Shastri Nagar','Mumbai','Maharashtra',412210,8745961230,'qwr@yahoo.com');

