*Apache Web Server*
- Apache web server is an open-source HTTP server developed and maintained by the Apache Software Foundation. It is a web server, so it is ususally used to server web content like HTML CSS, and JavaScript(Frontend). However, it can and usually used in conjuction with an aaplication server that acts as a backend-end for runnibg business logic, such as an *Apache Tomcat server*

*HOW TO USE APACHE*
- <**HTTPD**> : This is the Linux name of Apache
  
- <**yum install httpd**> : To install Apache
  
- <**service/systemctl httpd start**>: To start Apache
  
- <**service/systemctl httpd restart**>: To restart Apache when changes has been made on the configuration
  
- <**service/systemctl httpd staus**>: To to check the status
  
- <**firewall-cmd --permanent --add-service=http**>: This is to set firewall rule if we have on our system to allow HTTP TRAFFIC
  
- <**cat /var/log/httpd/access_log**>: To view the logs

*How To Configure an Apache Webserver*

-  <**/etc/httpd/conf/httpd.conf**>: This  the configuration file. Inside this file we do the following:
-  1. **Listen 80**: Write this line in the **/etc/httpd/conf/httpd.conf** to set the port which Apache is listening to
- 
-  2. **DocumentRoot "/var/www/htm/**: Write this line in the **/etc/httpd/conf/httpd.conf** to defines the location where the static content is stored. e.g images and static files
  
-  3. **sudo mv /opt/directory_of_files/* /var/www/html/** : To Move all the static file and Images to there /dir to **/var/www/html/** where Apache can see and have access to them

-  4. **ServerName www.url:80** : Write this line This is when when our host has a DNS name for example vougnest.com

*How To Simulate DNS server on our Machine*
-  </etc/host>: inside this file
      -  ip localhost
      -  sameip www.preffered_url 

*HOW TO HOST MULTIPLE WEBSITE INSIDE A SINGLE APACHE SERVER
- Inside the <**/etc/httpd/conf/httpd.conf**> file, configure all the website you'd like to host. E.g
- 1.
  <VirtualHost *:80>
    ServerName www.websit_url_on_DNS
    DocumentRoot /var/frontend/Project1
    </VirtualHost>

- 2.
  <VirtualHost *:80>
    ServerName www.websit_url_on_DNS
    DocumentRoot /var/frontend/Project2
    </VirtualHost>

*NOTE*
- Instead of have all the configuation of all website we are hosting the <**/etc/httpd/conf/httpd.conf**>. The best approach is :
- 1. is to create a config seperate file for each project e.g <**/etc/httpd/conf/project_name.conf**> 
  
- 2.  add all necessary configuration particular for this project here 
  
- 3. and go back to the <**/etc/httpd/conf/httpd.conf**> to write this line **Include conf/project_name.conf** 