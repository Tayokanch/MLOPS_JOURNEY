_APACHE TOMCAT_

- Apache Tomcat server provides a web server environment where you can host java-based web application. And to do this you must :
- 1. <**yum install java-1.8.0-openjdk-level>** in the : To install java Remote server in not installed
  
- 2. <**wget https://downloads.apache.org/tomcat/tomcat-8/v8.5.53/bin/apache-tomcat-8.5.53.ta.gz**> : Download Apache Tomcat installation file from the Apache Tomcat download page
  
- 3. <**sudo mkdir -p /opt/tomcat_or_preffered_name>** : to created a folder in the **/opt** where the Tomcat package will be extracted to
  
- 4. <**sudo tar xzvf apache-tomcat-11.0.11.tar.gz -C /opt/tomcat_or_preffered_name --strip-components=1**>: To extract the downloaded package to the created folder
  
- 5. <**./apache-tomcat-8.5.53/bin/startup.sh**> : To start the server
  
- 6. <**ls -l apache-tomcat-8.5.53**>: To see the Apache Tomcat Directory

  - /bin : this is where you see all the scripts and bat files. The .bat files are used if you were running on windows and .sh scripts are used for linux environments. e.g **startup.sh**, **shutdown.sh**

  - /conf: This is where ro see multiple configuration files, where you configure the web server, and where you configure what port to listen on and how to direct traffic between the different web apps.**E.g 1**. **server.xml** file has an entry for connector. The connector is the endpoint at which the requests are received. So it is set to **port 8080** and thats the default port that Tomcat listen on, and the port number can be changed here if required. Note any changes would require a restart of the Tomcat service. **E.g2**: **webdot.xml** file is used for depolying and configuring web applications,

  - /log: This is directory where the logs are stored. This is a good place to look at when you run into issues.

  - /webapps: This is the directory where web applications hosted by Tomcat server are located and that is where you should place / save your application

_HOW TO DEPLOY A WEB APPLICATION ON APACHE TOMCAT_

- **<jar -cvf myapp.war -C myapp/.>**: To package the application for us.
- **<mvn package>** or **<gradle build>**: This is an alternative or recommended approching to package the web application
- **<mv the_packaged_file to /conf/webapps>**
- Once moved, the application will be hosted at a path by the name of the extracted directory
- **<cat ~/apache-tomcat-8.5.53/logs/catalina.out>** : This is to verify if the application has been hosted by viewing the logs of the Tomcat under the /logs directory
- Finally we can view the application on the web browser by **https://localhost:8080/app_file_name**
