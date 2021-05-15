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

#UC13

mysql> CREATE TABLE user_details(
    -> user_id INT PRIMARY KEY,
    -> first_name VARCHAR(100) NOT NULL,
    -> last_name VARCHAR(100) NOT NULL);

mysql> DESC user_details;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| user_id    | int          | NO   | PRI | NULL    |       |
| first_name | varchar(100) | NO   |     | NULL    |       |
| last_name  | varchar(100) | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+

mysql> CREATE TABLE location(
    -> user_id INT PRIMARY KEY,
    -> address VARCHAR(100) NOT NULL,
    -> city VARCHAR(50) NOT NULL,
    -> state VARCHAR(50) NOT NULL,
    -> zip VARCHAR(10) NOT NULL);

mysql> ALTER TABLE location
    -> ADD FOREIGN KEY(user_id) REFERENCES user_details(user_id);

mysql> DESC location;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| user_id | int          | NO   | PRI | NULL    |       |
| address | varchar(100) | NO   |     | NULL    |       |
| city    | varchar(50)  | NO   |     | NULL    |       |
| state   | varchar(50)  | NO   |     | NULL    |       |
| zip     | varchar(10)  | NO   |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+

mysql> CREATE TABLE contact(
    -> user_id INT,
    -> phone VARCHAR(15),
    -> email VARCHAR(30),
    -> FOREIGN KEY(user_id) REFERENCES user_details(user_id));

mysql> DESC contact;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| user_id | int         | YES  | MUL | NULL    |       |
| phone   | varchar(15) | YES  |     | NULL    |       |
| email   | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+

mysql> CREATE TABLE contact_type(
    -> type_id INT,
    -> type_of_contact VARCHAR(20));

mysql> ALTER TABLE contact_type
    -> ADD PRIMARY KEY(type_id);

mysql> DESC contact_type;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| type_id         | int         | NO   | PRI | NULL    |       |
| type_of_contact | varchar(20) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+

mysql> CREATE TABLE user_contact_type_link(
    -> user_id INT,
    -> type_id INT,
    -> FOREIGN KEY(user_id) REFERENCES user_details(user_id),
    -> FOREIGN KEY(type_id) REFERENCES contact_type(type_id));

mysql> DESC user_contact_type_link;
+---------+------+------+-----+---------+-------+
| Field   | Type | Null | Key | Default | Extra |
+---------+------+------+-----+---------+-------+
| user_id | int  | YES  | MUL | NULL    |       |
| type_id | int  | YES  | MUL | NULL    |       |
+---------+------+------+-----+---------+-------+

mysql> INSERT INTO user_details VALUES  	
    -> (1, 'Bill', 'Smith'),
    -> (2, 'Terisa', 'Brown'),
    -> (3, 'Charlie', 'Williams');

mysql> Select * FROM user_details;
+---------+------------+-----------+
| user_id | first_name | last_name |
+---------+------------+-----------+
|       1 | Bill       | Smith     |
|       2 | Terisa     | Brown     |
|       3 | Charlie    | Williams  |
+---------+------------+-----------+

mysql> INSERT INTO location VALUES
    ->(1,'Street 1', 'City 1', 'California', '123456'),
    ->(2,'Street 2', 'City 2','California', '123457'),
    ->(3,'Street 3', 'City 3', 'Florida', '223457');

mysql> select * from location;
+---------+----------+--------+------------+--------+
| user_id | address  | city   | state      | zip    |
+---------+----------+--------+------------+--------+
|       1 | Street 1 | City 1 | California | 123456 |
|       2 | Street 2 | City 2 | California | 123457 |
|       3 | Street 3 | City 3 | Florida    | 223457 |
+---------+----------+--------+------------+--------+

mysql> INSERT INTO contact VALUES  		
    -> (1,'9876543210', 'Bill@email.com'),
    -> (2,'9876543222', 'Terisa@email.com'),
    -> (3,'8876543210', 'Charlie@email.com');

mysql> SELECT * from contact;
+---------+------------+-------------------+
| user_id | phone      | email             |
+---------+------------+-------------------+
|       1 | 9876543210 | Bill@email.com    |
|       2 | 9876543222 | Terisa@email.com  |
|       3 | 8876543210 | Charlie@email.com |
+---------+------------+-------------------+

mysql> INSERT INTO contact_type VALUES
    -> (101,'Friend'),
    -> (102,'Family');

mysql> SELECT * FROM contact_type;
+---------+-----------------+
| type_id | type_of_contact |
+---------+-----------------+
|     101 | Friend          |
|     102 | Family          |
+---------+-----------------+

mysql> INSERT INTO user_contact_type_link VALUES
    -> (1,101),
    -> (1,102),
    -> (2,101),
    -> (3,102);

+---------+---------+
| user_id | type_id |
+---------+---------+
|       1 |     101 |
|       1 |     102 |
|       2 |     101 |
|       3 |     102 |
+---------+---------+

mysql> SELECT u.first_name,u.last_name,l.state  	
    -> from user_details u JOIN location l
    -> where u.user_id = l.user_id
    -> AND l.state = 'California';
+------------+-----------+------------+
| first_name | last_name | state      |
+------------+-----------+------------+
| Bill       | Smith     | California |
| Terisa     | Brown     | California |
+------------+-----------+------------+

mysql> SELECT city,COUNT(City) FROM LOCATION;
+--------+-------------+
| city   | COUNT(City) |
+--------+-------------+
| City 1 |           3 |
+--------+-------------+

mysql> SELECT u.first_name,u.last_name,l.city 		
    -> from user_details u JOIN location l
    -> where u.user_id = l.user_id
    -> AND l.city = 'City 1'  
    -> ORDER BY u.first_name;
+------------+-----------+--------+
| first_name | last_name | city   |
+------------+-----------+--------+
| Bill       | Smith     | City 1 |
+------------+-----------+--------+

mysql> SELECT u.first_name,u.last_name,l.state
    -> from user_details u JOIN location l
    -> where u.user_id = 2.user_id
    -> AND l.state = 'California'
    -> ORDER BY u.first_name;

+------------+-----------+------------+
| first_name | last_name | state      |
+------------+-----------+------------+
| Bill       | Smith     | California |
| Terisa     | Brown     | California |
+------------+-----------+------------+

mysql> SELECT COUNT(u.user_id) AS number_of_contacts,t.type_of_contact 
    -> FROM user_details u JOIN contact_type t JOIN user_contact_type_link l
    -> WHERE u.user_id = l.user_id
    -> AND t.type_id = l.type_id
    -> GROUP BY(t.type_of_contact);

+--------------------+-----------------+
| number_of_contacts | type_of_contact |
+--------------------+-----------------+
|                  2 | Friend          |
|                  2 | Family          |
+--------------------+-----------------+
