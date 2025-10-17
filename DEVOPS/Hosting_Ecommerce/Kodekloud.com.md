# HOW TO HOST AN E-COMMERCE APP USING Linux, Apache, MariaDB, Php_

- 1. Identity a system on which we will deploy the application .e.g if its going to be Linux and with Linux distro .eg CentOS, Ubuntu etc.
- 2. Install and Configure Apache httpd Server, enable and start the service.

- 3. Install and configure MariaDB Database, enable and start the database swrvices.

- 4. Install and Configure Php on the server, download also scored for our application and configure it to work with Apache and Php.

-5. Install and Configure other system required for our application like `firewalls` on our server, creating the necessary rules to enable communications btw these

# PROCESS OF DEPOLYMENT ON A SINGLE NODE

1. Installing firewalld

   - `yum install firewalld`
   - `sudo service firewalld start`
   - `sudo systemctl enable firewalld`
   - `sudo systemctl staus firewalld`

2. Installing Mariadb-Server -` yum install mariabd-server`

   - `sudo vi /etc/my.cnf`: configure the file with the right port if we want to
   - `sudo systemctl start mariadb`
   - `sudo systemctl enable mariadb` : Ensure that process is started on server reboot

3. Configure Firewall Or add Firewall Rule

   - `sudo firewall-cmd --permanent -zone=public --add-port=3306/tcp`: This Opens TCP port 3306 (default for MariaDB/MySQL) in the firewall to allow remote database connections
   - `sudo firewall-cmd --reload`
   - `sudo firewall-cmd --list-all` : To list all our firewall rules

4. Configure Database

   - Go inside the mysql;
   - `sudo mysql` : To get into the MySql SHELL
   - CREATE DATABASE `name_of_database`
   - `SHOW DATABASES`
   - USE `name_of_database`
   - CREATE USER `'preffered_username'`@'localhost' IDENTIFIED BY `'preffered_Password'`;
   - GRANT ALL PRIVILEGES ON _._ TO `'preffered_username'`@'localhost';
   - `FLUSH PRIVILEGES`;
     OR

5. Configure Database for Multi Node i.e if the Database and the Web Application are host on a different Server

   - Go inside the Mysql or Mariadb;
   - CREATE DATABASE `name_of_database`
   - CREATE USER `'preffered_username'`@`'web_app_IP'` IDENTIFIED BY `'preffered_Password'`;
   - GRANT ALL PRIVILEGES ON *.* TO `'preffered_username'`@`'web_app_IP'`;
   - `FLUSH PRIVILEGES`;
     4b. Inside the Html Php page, go to the link of the code that connects to the database,

6. Load Data from a Script file

   - `mysql < db-load-script.sql` : This must be run on the Remote Server Shell where the Database is or will be hosted

7. Install Required Packages for the Web Server

   - `sudo yum install -y httpd php php-mysqlnd`
   - `sudo firewalldp-cmd --permanent --zone=public --add-port=80/tcp` : To Add the firewall rule for allowing external access to port 80
   - `sudo firewall-cmd --reload`: To reload the firewall rule to take effect.

8. Configure Httpd
   - `sudo sed -i 's/index.html/index.php/g' /etc/httpd/conf/httpd.conf`: This is to modify the Configuration in the `httpd` to use index.php instead of index.html
9. Start Httpd
   - `sudo service httpd start`
   - `sudo systemctl enable httpd`
10. Download Code

   - `sudo yum install -y git` : Install git if you dont have it on your machine
   - clone the code base from github to /var/www/html/ dir

11. - ` sudo sed -i 's/172.20.1.101/localhost/g' /var/www/html/index.php` : To change the ip address in the index.php file to locahost because we are host the web application and Database on the same server (single node deployment)
12. Test
    - curl http://localhost
