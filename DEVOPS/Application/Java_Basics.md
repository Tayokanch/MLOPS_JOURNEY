- <**sudo wget --no-check-certificate -O /opt/jdk-(version e.g 20)_linux-x64_bin.tar.gz <copied_url>**>: : To download java
  * NOTE: To get java jdk url [jdk_version](https://jdk.java.net/archive/)

- <**sudo tar -xvf /opt/jdk_downloaded_file(jdk-20_linux-x64_bin.tar.gz) -C /directory_to_extract_it_to**> : To extract the file, which will be extracted to the bin directory of the extract folder

- <**jdk-version(13.0.2)/bin/java -version**>: To check if Java has been installed

*Java Development Kit (JDK)*

- JDK is a set of tools that helps in **DEVELOPING, BUILDING, and RUNNING** java application on a systems
- <**ls jdk-version(13.0.2)/bin**> : This is to list all the jdk tools

*JAR*
- Java Archieve : This helps Package and compress multiple java.class file and dependent libraries and assets into a single distributable package

*WAR
- Web Archieve: This is used in the case of web application to Package and archieve static files and images which are part of the Java application

*TO CREATE AN JAR or PACKAGE AN APPLICATION*

- <**jar cf output_file_name.jar list_of_files_to_be_archieve**> : This is to archieve files. When this file is created, it automatically generates a manifest file within the package at the path **/META-INF/MANIFEST.MF**. This file contains information about the files packaged in the jar file and any other metadata regarding the application. One of such information is the **entry point** of our application

- <java -jar file_name.jar>: This is to run the application on the Java Runtime Environment.
  
- <**javadoc -d doc Entry_point (The_name_of_the_Main_class.java)**>: This is to write or generate documentation about our application


*JAVA BUILD TOOLS*
**Maven**, **Gradle**, **ANT** : These tools use configuration files where you can specify the steps that you want the build to automate, such as the steps in your build process, and these automatically execute these steps in that particular order that you have defined E.g ANT

**ANT CONFIGURATION**
- An ANT configuration is usually in an **XML** format 
- The sections of this XML file has a target action **<target></target>** specified to person a task. 
- The first section for **Compiling**
- The second section is for **Generating Documentation**
- The third section is for **Creating Deployable Jar file**
- 