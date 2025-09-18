**SSH**
- SSH (Secure Shell) is a way to safely connect to another computer over a network. E.g Connecting to an EC2 instance server from my Computer
  * ssh <hostname or Ip address>
  * ssh <user>@<hostname or Ip address>
  *  ssh -l <user>@<hostname or Ip address>
    - hostname : This is the name of the remote server e.g (EC2 instance)
    - IP : This is the address of the remote server e.g( public Ip address of an EC2 instance)
  
**Requirement for SSH to run**
- SSH must be running in port 22
- There must be a valid username and password created on the remote system that you can use or something known as an SSH key that you can use to login to the remote machine without a password.

EXAMPLE:
- if you want to connect to the dev web-server from your laptop, you can issue the SSH command by :
  * ssh host_name

**How TO CREATED A PASSWORD_LESS SSH**
first, create a key pair on the client, which is your laptop, using :
-  ssh-keygen -t rsa.
    * The public key would be stored at /home/username/.ssh/id_rsa.pub
    * The private would be stored at /home/username/.ssh/id_rsa.
    * Then Copy the public key to the remote server. To do this, you will have to resort the password-based authentication at least once. An easy way to do this is to make use of the command called: <ssh-copy-id local_machine_usermame@IP> You will be asked to enter the password for your user on the remote server. After this, you should be able to access the remote server without entering a password.

**SCP**
 - SCP allows us to copy files and directories within the file systems in Linux. SCP allows you to copy data over SSH. This means that you can copy files and directories betw your laptop and any other server tp which you have access

**HOW TO COPY FILES & DIRECTORIES FROM LOCAL MACHINE TO A REMOTE SERVER THROUGH SSH ACCESS**

- scp /home/bob/caleston-code.tar.gz localMachine_usernamr@remote_servername:/home/bob : 
  Here we are copying a compressed from from my local machine to an Ec2 remote server which we have connected through ssh. NOTE: you must have a read permission to the local / source file </home/bob/caleston-code.tar.gz> and a write permssion to the destination directory <ec2-0/home/bob>, Otherwise SCP command will fail with a permission denied error.

  
-  scp -r : To copy DIRECTORY </home/bob/newproject> <ec2-0/home/bob/myproject>
-  scp -pflag: These is used for migrating project like Express.js or React from Local machine to the Remote server