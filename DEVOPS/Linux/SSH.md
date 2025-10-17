*SSH*

- SSH (Secure Shell) is a way to safely connect to another computer over a network. E.g Connecting to an EC2 instance server from my Computer

*HOW TO CONNNECT A CLIENT TO A REMOTE SERVER THROUGH SHH*

  1. **<ssh hostname or Ip address>** : uses your current local username.
  2. **<ssh user@hostname or Ip address>** : specifies a remote user (Preffered command)
    - **user**: This is the user you've created on the remote server
    - **hostname** : This is the name of the remote server e.g (EC2 instance)
    - **IP** : This is the address of the remote server e.g( public Ip address of an EC2 instance)
  
*Requirement for SSH to run*
- SSH must be running in port 22
  
- There must be a valid username and password created on the remote system that you can use or something known as an SSH key that you can use to login to the remote machine without a password.
  
-  ssh host_name (Remote server name)

# How TO CREATED A PASSWORD_LESS SSH AND CONFIGURE A PASSWORDLESS SSH CONNECTION BTW CLIENT AND SERVER/HOST

- 1. **<ssh-keygen -t rsa -b 2048 -f /home/.ssh/my_key_name>** : To create a key pair on the client
  
- 2. - <**ssh-copy-id -i  ~/.ssh/my_key_name.pub user_name@remote_server_name**> : Copy the public key to the remote server to configure a passwordless SSH connection between the client and host. Note: This automatically creates `.ssh/authorized_keys` file where the public key would be saved on the remote server 
  
- 3. <**ssh user_name@remote_server_name**>: SHH into the Remote Server
  
- 4. <**chown  -R User:Group /home/thor/.ssh/**> : Make the user the owner  of the `.ssh` dir and all files inside and its group
  
- 5. <**chmod 700 ~/.ssh**>: Give the remote user permission to Read, Write, Execute(cd) the .ssh dir
  
- 6. <**chmod 600 ~/.ssh/authorized_keys**>: Give the remote user permission to Read, Write, the file

-7. <**ssh -i ~/.ssh/my_key_mame username@hostmae**> : This is to SSH into the remote server to use myKey private key whose public key is already known to  thor@app01

**SCP**
 - SCP allows us to copy files and directories within the file systems in Linux. SCP allows you to copy data over SSH. This means that you can copy files and directories betw your laptop and any other server tp which you have access

**HOW TO COPY FILES & DIRECTORIES FROM LOCAL MACHINE TO A REMOTE SERVER THROUGH SSH ACCESS**

- **<scp /home/bob/caleston-code.tar.gz user@remote_servername:/home/bob>**: 
  
  Here we are copying a compressed from my local machine to an Ec2 remote server which we have connected through ssh. NOTE: you must have a read permission to the local / source file **/home/bob/caleston-code.tar.gz** and a write permssion to the destination directory **ec2-0/home/bob**, Otherwise SCP command will fail with a permission denied error.

  
-  **<scp -r  /home/bob/newproject ec2-0/home/bob/myproject>** : To copy DIRECTORY
  
-  **<scp -pflag>**: These is used for migrating project like Express.js or React from Local machine to the Remote server