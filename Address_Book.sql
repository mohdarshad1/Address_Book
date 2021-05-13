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
