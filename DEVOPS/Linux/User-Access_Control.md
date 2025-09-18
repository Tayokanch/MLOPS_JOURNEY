**Access Control Files**

- Most Access Control files in Linux are stored under the /etc directory. This directory can be read by any user default, but only the root user has accees to wtite to it. The access control files are also designed in a way that they should never be modified using a text editor. Instead, use the built-in commands to add or modify access as needed

**Basic Access Control files in Linux**
1. /etc/passwd : This is commonly known as the password file. NOTE: This file doesnt save users password but stores account information e.g the command = (grep -i ^bob /etc/passwd), result = bob:x:1001:1001:Bob User:/home/bob:/bin/bash
- bob = username
- x = This is the encrypted password saved saved in /etc/shadow file
- 1001 = UID/ User ID
- 1001 = GID / Group Id
- Bob User = comment/full name
- /home/bob - home directory
- /bin/bash - login shell

2. /etc/shadow - This is where password are saved
   - bob:$6$abcd1234$QwErTyUiop...:18295:0:99999:7:::
   - usermame:password:LASTCHANGE:MINAGE:MAXAGE:WARN:INACTIVE:EXPADATE
3. /etc/group - This stores informations about user groups files
   - developers:x:1001:bob,sara,tayo
   - NAME:PASSWORD:GID:MEMBERS


**USER MANAGEMENT IN LINUX**
- useradd user_name : This used by the sysmtem admin or root user / a user with Sudo privileges to create a new local user in the system, such as the user for Bob

- passwd user_name : This command is used to set password for a user by an administrator
  
- -c : custom Comments
- -d : custom home directory
- -e : expiry date
- -g : specific GID
- -u : specific UID
- -s : specify login shells
- -G : create user with multiple secondary groups

**USER DELETION IN LINUX**
- userdel user_name : To delete a user
- groupadd -g Custom_GID group_name : To add linux group
- - groupdel group_name : To remove a group