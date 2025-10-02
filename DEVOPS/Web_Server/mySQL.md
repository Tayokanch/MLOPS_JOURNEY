- Download the RPM package for installing MySQL from the MYQSL download page
- <**rmp -ivh url**>: Install RPM repository
  
- **<yum install mysql-server>**: Install MySQL server
  
- <**systemctl mysqld start**>: To start the MySQL service using the systemd 
  
- <**systemctl mysqld status**> : To check the status 
  
- <**cat /var/log/mysqld.log**> : To check my sql logs. 

*How TO CONNECT TO THE MYSQL DATABASE*

- To connect to MySQL database, you will use the MySQL client utility,but for that, you need a password which would seen in the /var/log/mysqld.log

- <**mysql -u root -p/temporary_password**>: To connect to the database
  
- After Conneccting change the temporary_password by <**ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPassWard'**>

- <**CREATE DATABASE Name_of_Data_Base**>: To create a database on MySQL server

- <**USE Name_of_Database**>: To select a particular Database

- <**CREATE TABLE Name_of_Table**>: To create a table on Mysql
- <**SHOW TABLES**>: This is to see a list of tables

- <**INSERT INTO persons value ("John", 45, "NEW York"**)>: This is to insert into a table


*HOW TO CREATE USER ON MYSQL*

<**CREATE USER 'user_name'@'localhost' IDENTIFIED BY 'Mypassword';**>: This is to create a USER

<**CREATE USER 'user_name'@'IP_of_The_remote_server' IDENTIFIED BY 'Mypassword'**> : TO let user connect to the MySQL server from any other system

<**CREATE USER 'user_name'@'%' IDENTIFIED BY 'Mypassword'**> : To allow user to connect to an SQL server from all systems


*HOW TO GRANT A USER PERMISSION / PRIVILEGE*

- <**GRANT SELECT, UPDATE ON database_name.Table_name TO 'userName'@'%'**> : This is to give a user the privilge to SELECT/READ and UPDATE

-  <**GRANT ALL PRIVILEGES ON *.* TO 'userName'@'localhost;'**> : This is to grand a USER all Privileges of all Tables in a Database

- <**SHOW GRANTS FOR 'username'@'localhost'**>: This is to see all the GRANT or Privileges granted to a USER>