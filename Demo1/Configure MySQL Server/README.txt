Copy directory "Configure MySQL Server" to your Linux server: /tmp

[A] Problem with apt
~~~~~~~~~~~~~~~~~~~~
1. Go to directory "apt" and run script.sh
2. Go to part B

[B] Normal install
~~~~~~~~~~~~~~~~~~
1. Go to directory "mysql" and run script.sh
2. mysql -u root -p

3. Creating DB, Table and User:

CREATE DATABASE productdb;
USE productdb;
CREATE TABLE products (id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30), price INT);
CREATE USER 'name'@`webserver1_ip` IDENTIFIED BY 'password';
CREATE USER 'name'@`webserver2_ip` IDENTIFIED BY 'password';
GRANT SELECT, UPDATE, INSERT, DELETE ON productdb.* TO 'name'@`webserver1_ip`, 'name'@`webserver2_ip`;
FLUSH PRIVILEGES;

4. Change config file:

1. nano /etc/mysql/my.cnf
2. Add in the end next text:

[mysqld]
blind-address = 0.0.0.0

3. service mysql restart