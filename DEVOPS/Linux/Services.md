**TO START A SERVICE**
* service (service_name) start
* systemctl start (service_name)
* 

**TO STOP A RUNNING SERVICE**
* systemctl stop http

**TO CHECK THE STATUS OF A SERVICE**
* systemctl status (service_name)

**TO CONFIGURE A SERVICE**
* Inside the /etc/systemd/system crteate a UNIT file where you want your service to be known as (my_app.service)
* Inside the uNIT file create a variable 
  [Service], 
    (ExecStart = the_command_we_want_to_use_running_the_application ) = sudo systemctl status (service_name)
* systemctl daemon-reload - To make systemd know there's a new Configured service
  
* systemctl enable (service_name)

**TO DISABLE A SERVICE**
* systemctl disable (service_name)

**HOW TO CONFIGURE TO AUTOMATICALLY RUN THE APP WHEN THE SYSTEM BOOTS UP**

//THIS CAN BE DONE INSIDE THE UNIT FILE//
* [Install]
* WantedBy=multi-user.target  - This service is to be installed after a particular service has boot up
* systemctl enable (unit_file_name)