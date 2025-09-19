*SYSTEMD TOOLS*
- THERE ARE 2 MAJOR SYSTEMD TOOLS
    1. systemctl
    2. journalctl
   
- systemctl: This is the main command used to manage services on a SYSTEMD manage server. It can be used to manage services such as, <**start**>, <**stop**>, <**restart**>, <**reload**>, <**enable**>, <**disable**> a service. It is also used to view information about and manage the system state.

- journalctl: This command can query the contents of the SYSTEMD logging system called journal, and its convinient troubleshooting tool to figure out issues such as service failures
  
*SERVICE MANAGMENT WITH SYSTEMD using systemctl*
- In a case of DOCKER (service)
  1. systemctl start docker.service
  2. systemctl stop docker.service
  3. systemctl restart docker.service
  4. systemctl reload docker.service
  5. systemctl enable docker.service
  6. systemctl disable docker.service
  7. systemctl status docker.service
  8. systemctl daemon-reload: This command is run after making chnages on the service
  9. systemctl edit docker --full : This will open the docker service configuration file with a text editor
  10. system list-units --all : To list all the units SYSTEMD has loaded or attempted to load

*SERVICE MANAGMENT WITH SYSTEMD using JournalCTL*
- The JOURNALCTL is useful when troubleshooting issues with SYSTEMD unites as it checks the journal and log entires from all parts of the system.
  1. <**journalctl**>: prints all the log entries from the oldest entry to the newest
  2. <**journalctl -b**>: To see the logs from the current boot
  3. <**journalctl -u Docker.service**>: To see the log entries for a specific unit
