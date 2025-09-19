*INTRODUCTION TO SYSTEMD*
* HOW TO RUN SCRIPT IN THE BACKGROUND
  - Create the file e.g /project_name.service and must be created on the /etc/systemd/systemdirectory.
  
  - And run this command in the background inside the .serverice file, write a **Servive Derivative**
    - <**[Service]**> , Under this :
    - <**ExecStart =/bin/dash /usr/bin/script_file.sh**>. NOTE: This script most have been created or already exists in the /usr/bin
  
- <**sudo systemctl start project_name.service**> : Run the command to start the service
  
- <**systemctl status project_name.service**> : This is to check the status of the service
  
- <**systemctl stop project_name.service**> : This is to stop the service
  
- To allow the service to be enabled during boot, add another section to the service file called **Install Derivative**:
    - <**[Install]**>, Under this :
    - <**wantedBy graphical.target**>
  
- Then Add the Service account to be used to start the service instead of root which is the default. To do this, add another Directive in between <**[Service]**> and <**[Install]**>  which would be:  
  - <**User=Remote_username/ProjectName**>
  - <**Restart=on-failure**>: This tells the when to restart the service
  - <**RestartSec=10**> : This derivative set the time in seconds to wait before the system attempts to restart the service.

*TO ADD DEPENDENCY*
- lets say we have a dependency i.e, a Mongodb Service that needs to start before our application get started, 
  - We would need to an  <**Unit Derivative**> at the of the <**Service Derivative**>
    - <**[Unit]**> Under this:
    - <**After=Mongodb.service**>
    - Under the <**Unit Derivative**> we can also add
    -  <**Description = description_of_the_project**>
    -  <**Documentation = http://myproject.com**>

*FOR SYSTEM TO DETECT THE CHANGES*
- **<systemctl daemon-reload>**
