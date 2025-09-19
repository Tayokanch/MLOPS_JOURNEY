*INTRODUCTION TO SYSTEMD*

*HOW TO CREATE AND MANAGE SERVICES WITH Systemd*

**TO CONFIGURE A SERVICE**
1. Inside the <**/etc/systemd/system**> create a UNIT SERVICE FILE which you want your service to be known as e.g (my_app.service)
   
2. Open the Unit Service file <**sudo vim /etc/systemd/system/my_app.service**>
  
3. Run this command in the inside the service file, write a **Servive Derivative**
    - <**[Service]**> , Under this :
    - <**ExecStart =/bin/dash /usr/bin/script_file.sh**>. 
        - NOTE 1.: The file in this case **<script_file.sh>** must already exist in the /usr/bin
        - NOTE 2. Services run on Systemd is not limited to <**Script**>, it could also run <**nginx**>, <**docker**> , <**apache**>, <**postgresql**> etc.
  
- To allow the service to START AUTOMATICALLY after reboot, add another section to the service file called **Install Derivative**:
    - <**[Install]**>, Under this :
    - <**wantedBy graphical.target**>
    - **<sudo systemctl daemon-reload >** : FOR SYSTEM TO DETECT THE CHANGES
    - <**sudo systemctl enable service_name**> 
  
- Then Add the Service account to be used to start the service instead of root which is the default. To do this, add another Directive in between <**[Service]**> and <**[Install]**>  which would be:  
  - <**User=Remote_username/ProjectName**>
  - <**Restart=on-failure**>: This tells the when to restart the service
  - <**Restart=always**>: This ensures that service restartes when it stops for any reason
  - <**RestartSec=10**> : This derivative set the time in seconds to wait before the system attempts to restart the service.

*TO ADD DEPENDENCY*
- lets say we have a dependency i.e, a Mongodb Service that needs to start before our application get started, 
  - We would need to add a  <**Unit Derivative**> at the of the <**Service Derivative**>
    - <**[Unit]**> Under this:
    - <**After=name_of_the_service e.g Mongodb.service**>
    - Under the <**Unit Derivative**> we can also add
    -  <**Description = description_of_the_project**>
    -  <**Documentation = http://myproject.com**>

- <**sudo systemctl start project_name.service**> : Run the command to start the service
  
- <**systemctl status project_name.service**> : This is to check the status of the service
  
- <**systemctl stop project_name.service**> : This is to stop the service


