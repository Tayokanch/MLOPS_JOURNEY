- Go to Google and Search for `Jenkins Download`

- Install Java from the Jenkins Official Website. Make sure you install the `LTS`
- Install Jenkins for your OS
- Then run `systemctl status jenkins`
- `journalctl -u jenkins`: to get the logs

- Part of the logs, you would see whee it says, An admin user has been created, please use the following password to proceed to installation: "key string". Copy the string and login to Jenkins



# HOW to Login

- Go on your browser an paste the VM puplic IP with port `vmPublicIP:8080`

- paste the "key string" from the journalctl logs


# Jenkins Serice on Ubuntu
- `usr/lib/systemd/system/ `

# Jenkins File systems on Ubuntu 
# Jenkins link for Ubuntu
https://www.jenkins.io/doc/book/installing/linux/#debianubuntu

# Where Jenkins Service is Located
sudo vi `/lib/systemd/system/jenkins.service`

- sudo systemctl enable jenkins 
- sudo systemctl start jenkins 
- sudo systemctl status jenkins 