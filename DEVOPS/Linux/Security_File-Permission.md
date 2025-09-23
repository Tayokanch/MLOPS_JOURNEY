**SECURITY IN LINUX**
- Access Controls : This methods make use of user and password-based authentication to determine who can access the systems
  
- PAM : Pluggable Authentication Model, and it is another way of managing authentication in Linux
  
- Network Security : This is used to restrict or allow acccess to services listening to the Linux Server. In the case of Network Security, we commonly rely on externak firewalls to do this, it can also be set within the Linux systen by making use of tools such as IPTables and Firewalld.
  
- **SSH** : Secure Shell, this is used for remote access to a server over an unsecured network. SSH hardening can help makse sure only the authorized users gain access to the server
  
-  **SELinux** : This makes use of security policies for isolationg applications running on the same system from each other to protect Linux Server
-  


**ACCOUNT IN LINUX**

* What is an USER ACCOUNT : Every user in linux has an associated account. The user account manintains information such as the USERNAME & PASSWORD used to log into the system. Besides this, a user account also contains an identifier called UID which is unique for each user in the system , The information about a user account us stored in /etc/passwd file
  
  *USER ACCOUNT INFORMATION*
  - username : This is ther username of the account owner
  - ID / UID : This is a unique ID assigned to the user
  - GID: This is the ID of the group a user is part of. if no group is specified when user is created, it assignes ther user to a group with the same ID and name as the user ID
  
  - LINUX GROUP : This is a collection of users. it is used to organized users based on common attributes such as role or a function. The information about groups is stored in the /etc/group file. Each group has a unique identifier called GID. Suppose we have two developers called Bob and Michael who have a similar roles and work on the same system. We can group them in a Linux Group called Developers. By doing this, we can grant them access to the same access to a specific files and directories in the file system.
  

**ACOUNT TYPES**
- User Account :
  
- Superuser Account: A super user account is the root which has the UID 0. This super user has unrestricted access and control over the system, including other users. 
  
- System Account : System Accounts are usually created during the OS installation. These are for use by software and services that will not run as the supper user.


**COMMANDS FOR USER DETAILS IN LINUX**
- <**id**>: This gives information about the user e.g uid, gid, and user groups
- <**who**>: This is to see the LIST of USER currently logged into the system
- <**last**>: This displays the record of all logged-in users, it also shows the date and time when the system was rebooted.

**How to SWITCH USER in LINUX**
- <**su -username**> : This is the command used in switching user in Linux, then followed by the password of the account you're switching to
- sudo -u username : This is the Best practise of switching USERS as it doesnt require password
  
**SUDO**
The deafault configuration for sudo is defined under /etc/sudoers file. This file defines the policies applied by the sudo command and can be updated using the  visudo command
  - <**sudo visudo**> : This is the command we use to edit sudo file /etc/sudoers to and more users to the sudo group

- <**grep -i ^root /etc/passwd**> : This is used for setting no login shell. With a nologin shell set, no one can log into the systen using the root user and password directly.



